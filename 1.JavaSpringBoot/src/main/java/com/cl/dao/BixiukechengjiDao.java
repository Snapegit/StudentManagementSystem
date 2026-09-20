package com.cl.dao;

import com.cl.entity.BixiukechengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BixiukechengjiView;


/**
 * 必修课成绩
 * 
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface BixiukechengjiDao extends BaseMapper<BixiukechengjiEntity> {
	
	List<BixiukechengjiView> selectListView(@Param("ew") Wrapper<BixiukechengjiEntity> wrapper);

	List<BixiukechengjiView> selectListView(Pagination page,@Param("ew") Wrapper<BixiukechengjiEntity> wrapper);
	
	BixiukechengjiView selectView(@Param("ew") Wrapper<BixiukechengjiEntity> wrapper);
	

}
