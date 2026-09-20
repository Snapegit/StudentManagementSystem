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

import com.cl.entity.XuanxiukechengjiEntity;
import com.cl.entity.view.XuanxiukechengjiView;

import com.cl.service.XuanxiukechengjiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 选修课成绩
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
@RestController
@RequestMapping("/xuanxiukechengji")
public class XuanxiukechengjiController {
    @Autowired
    private XuanxiukechengjiService xuanxiukechengjiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XuanxiukechengjiEntity xuanxiukechengji,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			xuanxiukechengji.setXuehao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("jiaoshi")) {
			xuanxiukechengji.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XuanxiukechengjiEntity> ew = new EntityWrapper<XuanxiukechengjiEntity>();

		PageUtils page = xuanxiukechengjiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuanxiukechengji), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XuanxiukechengjiEntity xuanxiukechengji, 
		HttpServletRequest request){
        EntityWrapper<XuanxiukechengjiEntity> ew = new EntityWrapper<XuanxiukechengjiEntity>();

		PageUtils page = xuanxiukechengjiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuanxiukechengji), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XuanxiukechengjiEntity xuanxiukechengji){
       	EntityWrapper<XuanxiukechengjiEntity> ew = new EntityWrapper<XuanxiukechengjiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xuanxiukechengji, "xuanxiukechengji")); 
        return R.ok().put("data", xuanxiukechengjiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XuanxiukechengjiEntity xuanxiukechengji){
        EntityWrapper< XuanxiukechengjiEntity> ew = new EntityWrapper< XuanxiukechengjiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xuanxiukechengji, "xuanxiukechengji")); 
		XuanxiukechengjiView xuanxiukechengjiView =  xuanxiukechengjiService.selectView(ew);
		return R.ok("查询选修课成绩成功").put("data", xuanxiukechengjiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XuanxiukechengjiEntity xuanxiukechengji = xuanxiukechengjiService.selectById(id);
		xuanxiukechengji = xuanxiukechengjiService.selectView(new EntityWrapper<XuanxiukechengjiEntity>().eq("id", id));
        return R.ok().put("data", xuanxiukechengji);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XuanxiukechengjiEntity xuanxiukechengji = xuanxiukechengjiService.selectById(id);
		xuanxiukechengji = xuanxiukechengjiService.selectView(new EntityWrapper<XuanxiukechengjiEntity>().eq("id", id));
        return R.ok().put("data", xuanxiukechengji);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XuanxiukechengjiEntity xuanxiukechengji, HttpServletRequest request){
    	xuanxiukechengji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuanxiukechengji);
        xuanxiukechengjiService.insert(xuanxiukechengji);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XuanxiukechengjiEntity xuanxiukechengji, HttpServletRequest request){
    	xuanxiukechengji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuanxiukechengji);
        xuanxiukechengjiService.insert(xuanxiukechengji);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XuanxiukechengjiEntity xuanxiukechengji, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xuanxiukechengji);
        xuanxiukechengjiService.updateById(xuanxiukechengji);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xuanxiukechengjiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
