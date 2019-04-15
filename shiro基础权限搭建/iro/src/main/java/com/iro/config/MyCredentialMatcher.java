package com.iro.config;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

/**
 * 自定义的身份识别认证
 */
@Component
public class MyCredentialMatcher extends SimpleCredentialsMatcher {

    @Override
    public boolean doCredentialsMatch(AuthenticationToken authenticationToken, AuthenticationInfo authenticationInfo) {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
//       用户输入的密码
        String password1 = new String(token.getPassword());
        /**对输入的密码进行加密
         * 加密规则自己的姓名，盐值 5
         * */
        String username = token.getUsername();
        Md5Hash hash = new Md5Hash(password1, username, 5);
        String sec_password = hash.toString();
//        从数据库找的密码
        String password2 = (String) authenticationInfo.getCredentials();
        return this.equals(sec_password,password2);
    }
}
