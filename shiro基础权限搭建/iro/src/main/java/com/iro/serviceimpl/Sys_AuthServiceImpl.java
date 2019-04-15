package com.iro.serviceimpl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.iro.dao.Sys_AuthMapper;
import com.iro.pojo.Sys_Auth;
import com.iro.service.Sys_AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class Sys_AuthServiceImpl implements Sys_AuthService {
    @Autowired
    private Sys_AuthMapper mapper;

    //查询所有的权限
    @Override
    public JSONObject getAllAuths() {
        List<Map<String, Object>> list = mapper.getAllAuths();
        for(Map<String,Object> map:list){
            Integer type = (Integer) map.get("auth_type");
            map.put("auth_type",type == 0?"菜单":"资源");
            Integer valid = (Integer) map.get("is_valid");
            map.put("is_valid",valid == 0?"启用":"禁用");
        }
        String s = JSON.toJSONString(list);
        JSONArray array = JSONArray.parseArray(s);
        JSONObject obj= new JSONObject();
        obj.put("data",array);
        obj.put("code",0);
        obj.put("msg","ok");
        obj.put("count",countAuth());
        return obj;
    }

    @Override
    public Integer countAuth() {
        return mapper.countAuth();
    }

    @Override
    public Boolean addOrUpdateAuth(Sys_Auth auth) {
        if(auth.getAuth_id() == null){
            //修改
            Integer add = mapper.addAuth(auth);
            return add == 1;
        } else{
          //添加
            Integer edit = mapper.editAuth(auth);
            return edit == 1;
        }
    }
}
