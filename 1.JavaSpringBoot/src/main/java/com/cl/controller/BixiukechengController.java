package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.BixiukechengEntity;
import com.cl.entity.view.BixiukechengView;

import com.cl.service.BixiukechengService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 必修课程
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
@RestController
@RequestMapping("/bixiukecheng")
public class BixiukechengController {
    @Autowired
    private BixiukechengService bixiukechengService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,BixiukechengEntity bixiukecheng,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			bixiukecheng.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
			bixiukecheng.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<BixiukechengEntity> ew = new EntityWrapper<BixiukechengEntity>();

		PageUtils page = bixiukechengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, bixiukecheng), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,BixiukechengEntity bixiukecheng, 
		HttpServletRequest request){
        EntityWrapper<BixiukechengEntity> ew = new EntityWrapper<BixiukechengEntity>();

		PageUtils page = bixiukechengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, bixiukecheng), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( BixiukechengEntity bixiukecheng){
       	EntityWrapper<BixiukechengEntity> ew = new EntityWrapper<BixiukechengEntity>();
      	ew.allEq(MPUtil.allEQMapPre( bixiukecheng, "bixiukecheng")); 
        return R.ok().put("data", bixiukechengService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(BixiukechengEntity bixiukecheng){
        EntityWrapper< BixiukechengEntity> ew = new EntityWrapper< BixiukechengEntity>();
 		ew.allEq(MPUtil.allEQMapPre( bixiukecheng, "bixiukecheng")); 
		BixiukechengView bixiukechengView =  bixiukechengService.selectView(ew);
		return R.ok("查询必修课程成功").put("data", bixiukechengView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        BixiukechengEntity bixiukecheng = bixiukechengService.selectById(id);
		bixiukecheng = bixiukechengService.selectView(new EntityWrapper<BixiukechengEntity>().eq("id", id));
        return R.ok().put("data", bixiukecheng);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        BixiukechengEntity bixiukecheng = bixiukechengService.selectById(id);
		bixiukecheng = bixiukechengService.selectView(new EntityWrapper<BixiukechengEntity>().eq("id", id));
        return R.ok().put("data", bixiukecheng);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody BixiukechengEntity bixiukecheng, HttpServletRequest request){
    	bixiukecheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(bixiukecheng);
        bixiukechengService.insert(bixiukecheng);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody BixiukechengEntity bixiukecheng, HttpServletRequest request){
    	bixiukecheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(bixiukecheng);
        bixiukechengService.insert(bixiukecheng);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody BixiukechengEntity bixiukecheng, HttpServletRequest request){
        //ValidatorUtils.validateEntity(bixiukecheng);
        bixiukechengService.updateById(bixiukecheng);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        bixiukechengService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
