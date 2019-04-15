package com.iro.service;

import com.iro.pojo.Sys_Auth;
import com.iro.pojo.Sys_Role;
import com.iro.pojo.Sys_User;

import java.util.List;
import java.util.Map;

public interface SysService {
    //用户登录
    Sys_User userLogin(String username,String password);
    //根据用户名查找用户
    Sys_User findUserByUsername(String username);
    //查询所有的权限构造菜单
    Map<Sys_Auth,List<Sys_Auth>> getAllAuths();
    //查询当前用户具有的所有角色
    List<Sys_Role> getAllRolesByUserName(String username);
    //查询当前用户具有的所有权限
    List<Sys_Auth> getAllAuthByUserName(String username);
}
