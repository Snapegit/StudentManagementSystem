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

import com.cl.entity.BixiukechengjiEntity;
import com.cl.entity.view.BixiukechengjiView;

import com.cl.service.BixiukechengjiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 必修课成绩
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
@RestController
@RequestMapping("/bixiukechengji")
public class BixiukechengjiController {
    @Autowired
    private BixiukechengjiService bixiukechengjiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,BixiukechengjiEntity bixiukechengji,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			bixiukechengji.setXuehao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("jiaoshi")) {
			bixiukechengji.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<BixiukechengjiEntity> ew = new EntityWrapper<BixiukechengjiEntity>();

		PageUtils page = bixiukechengjiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, bixiukechengji), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,BixiukechengjiEntity bixiukechengji, 
		HttpServletRequest request){
        EntityWrapper<BixiukechengjiEntity> ew = new EntityWrapper<BixiukechengjiEntity>();

		PageUtils page = bixiukechengjiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, bixiukechengji), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( BixiukechengjiEntity bixiukechengji){
       	EntityWrapper<BixiukechengjiEntity> ew = new EntityWrapper<BixiukechengjiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( bixiukechengji, "bixiukechengji")); 
        return R.ok().put("data", bixiukechengjiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(BixiukechengjiEntity bixiukechengji){
        EntityWrapper< BixiukechengjiEntity> ew = new EntityWrapper< BixiukechengjiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( bixiukechengji, "bixiukechengji")); 
		BixiukechengjiView bixiukechengjiView =  bixiukechengjiService.selectView(ew);
		return R.ok("查询必修课成绩成功").put("data", bixiukechengjiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        BixiukechengjiEntity bixiukechengji = bixiukechengjiService.selectById(id);
		bixiukechengji = bixiukechengjiService.selectView(new EntityWrapper<BixiukechengjiEntity>().eq("id", id));
        return R.ok().put("data", bixiukechengji);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        BixiukechengjiEntity bixiukechengji = bixiukechengjiService.selectById(id);
		bixiukechengji = bixiukechengjiService.selectView(new EntityWrapper<BixiukechengjiEntity>().eq("id", id));
        return R.ok().put("data", bixiukechengji);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody BixiukechengjiEntity bixiukechengji, HttpServletRequest request){
    	bixiukechengji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(bixiukechengji);
        bixiukechengjiService.insert(bixiukechengji);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody BixiukechengjiEntity bixiukechengji, HttpServletRequest request){
    	bixiukechengji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(bixiukechengji);
        bixiukechengjiService.insert(bixiukechengji);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody BixiukechengjiEntity bixiukechengji, HttpServletRequest request){
        //ValidatorUtils.validateEntity(bixiukechengji);
        bixiukechengjiService.updateById(bixiukechengji);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        bixiukechengjiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
