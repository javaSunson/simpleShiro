package com.iro.dao;

import com.iro.pojo.Sys_User;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Sys_UserMapper {


    int deleteByPrimaryKey(Integer userId);

    int insert(Sys_User record);

    int insertSelective(Sys_User record);

    Sys_User selectByPrimaryKey(Integer userId);
    int updateByPrimaryKeySelective(Sys_User record);

    int updateByPrimaryKey(Sys_User record);
}