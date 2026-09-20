package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.BixiukechengjiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BixiukechengjiView;


/**
 * 必修课成绩
 *
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
public interface BixiukechengjiService extends IService<BixiukechengjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BixiukechengjiView> selectListView(Wrapper<BixiukechengjiEntity> wrapper);
   	
   	BixiukechengjiView selectView(@Param("ew") Wrapper<BixiukechengjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BixiukechengjiEntity> wrapper);
   	

}

