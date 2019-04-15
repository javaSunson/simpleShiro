package com.iro.pojo;

import lombok.*;

import java.util.Date;
@Setter@Getter@NoArgsConstructor@AllArgsConstructor@ToString
public class Sys_User {
    private Integer userId;
    private String username;
    private String password;
    private String sex;
    private Integer age;
    private String email;
    private String phone;
    private Integer deptId;
    private Date registerDate;
    private Integer isValid;
}