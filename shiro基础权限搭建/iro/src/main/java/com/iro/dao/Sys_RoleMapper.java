package com.iro.dao;

import com.iro.pojo.Sys_Role;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Sys_RoleMapper {

    int deleteByPrimaryKey(Integer roleId);

    int insert(Sys_Role record);

    int insertSelective(Sys_Role record);


    Sys_Role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(Sys_Role record);

    int updateByPrimaryKey(Sys_Role record);
}