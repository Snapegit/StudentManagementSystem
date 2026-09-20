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


import com.cl.dao.BixiukechengDao;
import com.cl.entity.BixiukechengEntity;
import com.cl.service.BixiukechengService;
import com.cl.entity.view.BixiukechengView;

@Service("bixiukechengService")
public class BixiukechengServiceImpl extends ServiceImpl<BixiukechengDao, BixiukechengEntity> implements BixiukechengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BixiukechengEntity> page = this.selectPage(
                new Query<BixiukechengEntity>(params).getPage(),
                new EntityWrapper<BixiukechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BixiukechengEntity> wrapper) {
		  Page<BixiukechengView> page =new Query<BixiukechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<BixiukechengView> selectListView(Wrapper<BixiukechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BixiukechengView selectView(Wrapper<BixiukechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
