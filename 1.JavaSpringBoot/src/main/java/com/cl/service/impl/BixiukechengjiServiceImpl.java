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


import com.cl.dao.BixiukechengjiDao;
import com.cl.entity.BixiukechengjiEntity;
import com.cl.service.BixiukechengjiService;
import com.cl.entity.view.BixiukechengjiView;

@Service("bixiukechengjiService")
public class BixiukechengjiServiceImpl extends ServiceImpl<BixiukechengjiDao, BixiukechengjiEntity> implements BixiukechengjiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BixiukechengjiEntity> page = this.selectPage(
                new Query<BixiukechengjiEntity>(params).getPage(),
                new EntityWrapper<BixiukechengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BixiukechengjiEntity> wrapper) {
		  Page<BixiukechengjiView> page =new Query<BixiukechengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<BixiukechengjiView> selectListView(Wrapper<BixiukechengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BixiukechengjiView selectView(Wrapper<BixiukechengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
