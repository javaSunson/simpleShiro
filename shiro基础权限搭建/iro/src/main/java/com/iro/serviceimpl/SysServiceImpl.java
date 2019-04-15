package com.iro.serviceimpl;

import com.iro.dao.SysMapper;
import com.iro.pojo.Sys_Auth;
import com.iro.pojo.Sys_Role;
import com.iro.pojo.Sys_User;
import com.iro.service.SysService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysServiceImpl implements SysService {
    @Autowired
    private SysMapper sysMapper;
    @Override
    public Sys_User userLogin(String username, String password) {
        Sys_User sys_user = new Sys_User();
        sys_user.setUsername(username);
        sys_user.setPassword(password);
        Sys_User loginUser = sysMapper.userLogin(sys_user);
        return loginUser;
    }

    @Override
    public Sys_User findUserByUsername(String username)
    {
        return sysMapper.findUserByUsername(username);
    }

    @Override
    public Map<Sys_Auth,List<Sys_Auth>> getAllAuths() {
        List<Sys_Auth> list = sysMapper.getAllAuths();
        Map<Sys_Auth,List<Sys_Auth>> map = new LinkedHashMap<>();
        for (Sys_Auth auth : list){
            if(auth.getAuth_layer() == 1){
                List<Sys_Auth> childrens = new ArrayList<>();
                for (Sys_Auth a : list){
                    if(a.getAuth_layer() == 2 && a.getParent_id() == auth.getAuth_id()){
                        childrens.add(a);
                    }
                }
                map.put(auth,childrens);
            }
        }
        return map;
    }
    //查询用户的角色
    @Override
    public List<Sys_Role> getAllRolesByUserName(String username) {
        return sysMapper.getAllRolesByUserName(username);
    }

    @Override
    public List<Sys_Auth> getAllAuthByUserName(String username) {
        return sysMapper.getAllAuthByUserName(username);
    }
}
