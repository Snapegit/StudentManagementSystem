package com.cl.dao;

import com.cl.entity.XuanxiukechengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuanxiukechengjiView;


/**
 * 选修课成绩
 * 
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface XuanxiukechengjiDao extends BaseMapper<XuanxiukechengjiEntity> {
	
	List<XuanxiukechengjiView> selectListView(@Param("ew") Wrapper<XuanxiukechengjiEntity> wrapper);

	List<XuanxiukechengjiView> selectListView(Pagination page,@Param("ew") Wrapper<XuanxiukechengjiEntity> wrapper);
	
	XuanxiukechengjiView selectView(@Param("ew") Wrapper<XuanxiukechengjiEntity> wrapper);
	

}
