package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.PingjiaoxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.PingjiaoxinxiView;


/**
 * 评教信息
 *
 * @author 
 * @email 
 * @date 2024-02-06 23:22:38
 */
public interface PingjiaoxinxiService extends IService<PingjiaoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PingjiaoxinxiView> selectListView(Wrapper<PingjiaoxinxiEntity> wrapper);
   	
   	PingjiaoxinxiView selectView(@Param("ew") Wrapper<PingjiaoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PingjiaoxinxiEntity> wrapper);
   	

}

