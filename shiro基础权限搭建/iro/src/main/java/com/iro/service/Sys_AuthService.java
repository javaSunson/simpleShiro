package com.iro.service;

import com.alibaba.fastjson.JSONObject;
import com.iro.pojo.Sys_Auth;

public interface Sys_AuthService {
    //查询权限
    JSONObject getAllAuths();
    //统计权限个数
    Integer countAuth();
    //添加或者修改权限
    Boolean addOrUpdateAuth(Sys_Auth auth);
}
