package com.cl.dao;

import com.cl.entity.XuanxiukechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuanxiukechengView;


/**
 * 选修课程
 * 
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface XuanxiukechengDao extends BaseMapper<XuanxiukechengEntity> {
	
	List<XuanxiukechengView> selectListView(@Param("ew") Wrapper<XuanxiukechengEntity> wrapper);

	List<XuanxiukechengView> selectListView(Pagination page,@Param("ew") Wrapper<XuanxiukechengEntity> wrapper);
	
	XuanxiukechengView selectView(@Param("ew") Wrapper<XuanxiukechengEntity> wrapper);
	

}
