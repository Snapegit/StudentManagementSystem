package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.BixiukechengEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BixiukechengView;


/**
 * 必修课程
 *
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface BixiukechengService extends IService<BixiukechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BixiukechengView> selectListView(Wrapper<BixiukechengEntity> wrapper);
   	
   	BixiukechengView selectView(@Param("ew") Wrapper<BixiukechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BixiukechengEntity> wrapper);
   	

}

