package com.iro.dao;

import com.iro.pojo.Sys_User_Role;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Sys_User_RoleMapper {
    int deleteByPrimaryKey(Integer dbid);

    int insert(Sys_User_Role record);

    int insertSelective(Sys_User_Role record);

    Sys_User_Role selectByPrimaryKey(Integer dbid);

    int updateByPrimaryKeySelective(Sys_User_Role record);

    int updateByPrimaryKey(Sys_User_Role record);
}