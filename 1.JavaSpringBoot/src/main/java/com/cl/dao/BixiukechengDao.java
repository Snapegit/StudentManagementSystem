package com.cl.dao;

import com.cl.entity.BixiukechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BixiukechengView;


/**
 * 必修课程
 * 
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface BixiukechengDao extends BaseMapper<BixiukechengEntity> {
	
	List<BixiukechengView> selectListView(@Param("ew") Wrapper<BixiukechengEntity> wrapper);

	List<BixiukechengView> selectListView(Pagination page,@Param("ew") Wrapper<BixiukechengEntity> wrapper);
	
	BixiukechengView selectView(@Param("ew") Wrapper<BixiukechengEntity> wrapper);
	

}
