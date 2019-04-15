package com.iro.controller;

import com.alibaba.fastjson.JSONObject;
import com.iro.pojo.Sys_Auth;
import com.iro.service.Sys_AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Sys_AuthController {
    @Autowired
    private Sys_AuthService service;
    @RequestMapping(value = "/getJsonAuths",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String getJsonAuths(){
        JSONObject obj = service.getAllAuths();
        return obj.toJSONString();
    }
    //添加权限
    @RequestMapping("/admin-authedit")
    public String toEditAuth(){
        return "admin-authedit";
    }
    //修改权限
    @RequestMapping(value = "/addOrUpdateAuth",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addOrUpdateAuth(Sys_Auth auth){
        Boolean bool = service.addOrUpdateAuth(auth);
        return bool?"ok":"error";
    }
}
