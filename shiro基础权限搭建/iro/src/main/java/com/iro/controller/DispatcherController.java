package com.iro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DispatcherController {
    @RequestMapping("/login")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/welcome")
    public String toWelcome(){
        return "welcome";
    }
}
