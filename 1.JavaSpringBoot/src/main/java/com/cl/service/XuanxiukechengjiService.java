package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XuanxiukechengjiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuanxiukechengjiView;


/**
 * 选修课成绩
 *
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface XuanxiukechengjiService extends IService<XuanxiukechengjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuanxiukechengjiView> selectListView(Wrapper<XuanxiukechengjiEntity> wrapper);
   	
   	XuanxiukechengjiView selectView(@Param("ew") Wrapper<XuanxiukechengjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuanxiukechengjiEntity> wrapper);
   	

}

