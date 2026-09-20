package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XuanxiukechengEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuanxiukechengView;


/**
 * 选修课程
 *
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface XuanxiukechengService extends IService<XuanxiukechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuanxiukechengView> selectListView(Wrapper<XuanxiukechengEntity> wrapper);
   	
   	XuanxiukechengView selectView(@Param("ew") Wrapper<XuanxiukechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuanxiukechengEntity> wrapper);
   	

}

