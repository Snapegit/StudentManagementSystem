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

import com.cl.entity.PingjiaoxinxiEntity;
import com.cl.entity.view.PingjiaoxinxiView;

import com.cl.service.PingjiaoxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 评教信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-06 23:22:38
 */
@RestController
@RequestMapping("/pingjiaoxinxi")
public class PingjiaoxinxiController {
    @Autowired
    private PingjiaoxinxiService pingjiaoxinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,PingjiaoxinxiEntity pingjiaoxinxi,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			pingjiaoxinxi.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
			pingjiaoxinxi.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<PingjiaoxinxiEntity> ew = new EntityWrapper<PingjiaoxinxiEntity>();

		PageUtils page = pingjiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, pingjiaoxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,PingjiaoxinxiEntity pingjiaoxinxi, 
		HttpServletRequest request){
        EntityWrapper<PingjiaoxinxiEntity> ew = new EntityWrapper<PingjiaoxinxiEntity>();

		PageUtils page = pingjiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, pingjiaoxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( PingjiaoxinxiEntity pingjiaoxinxi){
       	EntityWrapper<PingjiaoxinxiEntity> ew = new EntityWrapper<PingjiaoxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( pingjiaoxinxi, "pingjiaoxinxi")); 
        return R.ok().put("data", pingjiaoxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(PingjiaoxinxiEntity pingjiaoxinxi){
        EntityWrapper< PingjiaoxinxiEntity> ew = new EntityWrapper< PingjiaoxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( pingjiaoxinxi, "pingjiaoxinxi")); 
		PingjiaoxinxiView pingjiaoxinxiView =  pingjiaoxinxiService.selectView(ew);
		return R.ok("查询评教信息成功").put("data", pingjiaoxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        PingjiaoxinxiEntity pingjiaoxinxi = pingjiaoxinxiService.selectById(id);
		pingjiaoxinxi = pingjiaoxinxiService.selectView(new EntityWrapper<PingjiaoxinxiEntity>().eq("id", id));
        return R.ok().put("data", pingjiaoxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        PingjiaoxinxiEntity pingjiaoxinxi = pingjiaoxinxiService.selectById(id);
		pingjiaoxinxi = pingjiaoxinxiService.selectView(new EntityWrapper<PingjiaoxinxiEntity>().eq("id", id));
        return R.ok().put("data", pingjiaoxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody PingjiaoxinxiEntity pingjiaoxinxi, HttpServletRequest request){
    	pingjiaoxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(pingjiaoxinxi);
        pingjiaoxinxiService.insert(pingjiaoxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody PingjiaoxinxiEntity pingjiaoxinxi, HttpServletRequest request){
    	pingjiaoxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(pingjiaoxinxi);
        pingjiaoxinxiService.insert(pingjiaoxinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody PingjiaoxinxiEntity pingjiaoxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(pingjiaoxinxi);
        pingjiaoxinxiService.updateById(pingjiaoxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        pingjiaoxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
