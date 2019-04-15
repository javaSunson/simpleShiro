package com.iro.dao;

import com.iro.pojo.Sys_Role_Auth;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Sys_Role_AuthMapper {

    int deleteByPrimaryKey(Integer dbid);

    int insert(Sys_Role_Auth record);

    int insertSelective(Sys_Role_Auth record);


    Sys_Role_Auth selectByPrimaryKey(Integer dbid);

    int updateByPrimaryKeySelective(Sys_Role_Auth record);

    int updateByPrimaryKey(Sys_Role_Auth record);
}