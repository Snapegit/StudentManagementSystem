package com.cl.dao;

import com.cl.entity.PingjiaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.PingjiaoxinxiView;


/**
 * 评教信息
 * 
 * @author 
 * @email 
 * @date 2024-02-06 23:22:38
 */
public interface PingjiaoxinxiDao extends BaseMapper<PingjiaoxinxiEntity> {
	
	List<PingjiaoxinxiView> selectListView(@Param("ew") Wrapper<PingjiaoxinxiEntity> wrapper);

	List<PingjiaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<PingjiaoxinxiEntity> wrapper);
	
	PingjiaoxinxiView selectView(@Param("ew") Wrapper<PingjiaoxinxiEntity> wrapper);
	

}
