package com.iro.controller;

import com.iro.pojo.Sys_Auth;
import com.iro.pojo.Sys_User;
import com.iro.service.SysService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class SysController {
    @Autowired
    private SysService sysService;
    @RequestMapping("/userLogin")
    public ModelAndView userLogin(String username, String password, HttpSession session){
        ModelAndView mv = new ModelAndView("forward:/toIndex");
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        /*  Sys_User sys_user = sysService.userLogin(username, password);
        if(sys_user == null){
            mv.setViewName("login");
            mv.addObject("msg","用户名或者密码错误!");
            mv.addObject("preName",username);
        }else{
            session.setAttribute("user",sys_user);
        }*/
        try{
            subject.login(token);
            session.setAttribute("user",username);
        }catch (UnknownAccountException e){
            mv.addObject("msg","用户名不存在!");
            mv.addObject("preName",username);
            mv.setViewName("login");
        }catch(IncorrectCredentialsException e){
            mv.addObject("msg","账户或者密码错误!");
            mv.addObject("preName",username);
            mv.setViewName("login");
        }

        return mv;
    }
    @RequestMapping("/toIndex")
    public ModelAndView toIndex(){
        ModelAndView index = new ModelAndView("index");
        Map<Sys_Auth, List<Sys_Auth>> listMap = sysService.getAllAuths();
        index.addObject("auths",listMap);
        return index;
    }
    //退出登录
    @RequestMapping("/userLogout")
    public String logout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }
    @RequiresPermissions("权限管理")
    //跳转到系统管理
    @RequestMapping("/auth/list")
    public String toAuthList(){
        return "admin-auth";
    }
    @RequiresPermissions("角色管理")
    @RequestMapping("/role/list")
    public String toRoleList(){
        return "admin-role";
    }
    @RequiresPermissions("用户管理")
    @RequestMapping("/user/list")
    public String toUserList(){
        return "admin-list";
    }
    //跳转到编辑
    @RequestMapping("/admin-edit")
    public String adminEdit(){
        return "admin-edit";
    }

}
