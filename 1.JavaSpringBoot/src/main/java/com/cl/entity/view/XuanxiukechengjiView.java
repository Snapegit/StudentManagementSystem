package com.cl.entity.view;

import com.cl.entity.XuanxiukechengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 选修课成绩
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-06 23:22:37
 */
@TableName("xuanxiukechengji")
public class XuanxiukechengjiView  extends XuanxiukechengjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuanxiukechengjiView(){
	}
 
 	public XuanxiukechengjiView(XuanxiukechengjiEntity xuanxiukechengjiEntity){
 	try {
			BeanUtils.copyProperties(this, xuanxiukechengjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
