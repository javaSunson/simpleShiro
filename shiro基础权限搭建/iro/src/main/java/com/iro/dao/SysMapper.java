package com.iro.dao;

import com.iro.pojo.Sys_Auth;
import com.iro.pojo.Sys_Role;
import com.iro.pojo.Sys_User;
import org.apache.ibatis.annotations.Mapper;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.util.List;

public interface SysMapper {
    //登录
    Sys_User userLogin(Sys_User sys_user);
    //根据用户名查找用户
    Sys_User findUserByUsername(String username);
    //查询所有的权限构造菜单
    List<Sys_Auth> getAllAuths();
    //查询当前用户具有的所有角色
    List<Sys_Role> getAllRolesByUserName(String username);
    //查询当前用户具有的所有权限
    List<Sys_Auth> getAllAuthByUserName(String username);


}
