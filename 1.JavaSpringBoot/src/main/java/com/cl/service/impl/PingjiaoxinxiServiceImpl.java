package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.PingjiaoxinxiDao;
import com.cl.entity.PingjiaoxinxiEntity;
import com.cl.service.PingjiaoxinxiService;
import com.cl.entity.view.PingjiaoxinxiView;

@Service("pingjiaoxinxiService")
public class PingjiaoxinxiServiceImpl extends ServiceImpl<PingjiaoxinxiDao, PingjiaoxinxiEntity> implements PingjiaoxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PingjiaoxinxiEntity> page = this.selectPage(
                new Query<PingjiaoxinxiEntity>(params).getPage(),
                new EntityWrapper<PingjiaoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PingjiaoxinxiEntity> wrapper) {
		  Page<PingjiaoxinxiView> page =new Query<PingjiaoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<PingjiaoxinxiView> selectListView(Wrapper<PingjiaoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PingjiaoxinxiView selectView(Wrapper<PingjiaoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
