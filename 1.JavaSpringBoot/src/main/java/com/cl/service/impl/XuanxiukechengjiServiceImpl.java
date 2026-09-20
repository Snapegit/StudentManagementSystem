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


import com.cl.dao.XuanxiukechengjiDao;
import com.cl.entity.XuanxiukechengjiEntity;
import com.cl.service.XuanxiukechengjiService;
import com.cl.entity.view.XuanxiukechengjiView;

@Service("xuanxiukechengjiService")
public class XuanxiukechengjiServiceImpl extends ServiceImpl<XuanxiukechengjiDao, XuanxiukechengjiEntity> implements XuanxiukechengjiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuanxiukechengjiEntity> page = this.selectPage(
                new Query<XuanxiukechengjiEntity>(params).getPage(),
                new EntityWrapper<XuanxiukechengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuanxiukechengjiEntity> wrapper) {
		  Page<XuanxiukechengjiView> page =new Query<XuanxiukechengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<XuanxiukechengjiView> selectListView(Wrapper<XuanxiukechengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuanxiukechengjiView selectView(Wrapper<XuanxiukechengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
