package com.iro.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

public class MD5SecTools {
    public static String  MD5tools(String password1,String username,Integer salt){
        Md5Hash hash = new Md5Hash(password1, username, salt);
        String sec_password = hash.toString();
        return sec_password;
    }

    public static void main(String[] args) {
        String admin = MD5tools("123", "ping", 5);
        System.out.println(admin);
    }
}
