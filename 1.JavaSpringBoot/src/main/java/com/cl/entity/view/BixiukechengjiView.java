package com.cl.entity.view;

import com.cl.entity.BixiukechengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 必修课成绩
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
@TableName("bixiukechengji")
public class BixiukechengjiView  extends BixiukechengjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public BixiukechengjiView(){
	}
 
 	public BixiukechengjiView(BixiukechengjiEntity bixiukechengjiEntity){
 	try {
			BeanUtils.copyProperties(this, bixiukechengjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
