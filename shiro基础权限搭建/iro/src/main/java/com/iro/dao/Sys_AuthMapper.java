package com.iro.dao;

import com.iro.pojo.Sys_Auth;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface Sys_AuthMapper {
//查询所有权限
    List<Map<String,Object>> getAllAuths();
 //统计权限个数
    Integer countAuth();
    //添加权限
    Integer addAuth(Sys_Auth auth);
    //编辑权限
    Integer editAuth(Sys_Auth auth);

}