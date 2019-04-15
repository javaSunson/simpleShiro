package com.iro.pojo;

import lombok.*;

@Setter@Getter@NoArgsConstructor@AllArgsConstructor@ToString
public class Sys_Auth {
    private Integer auth_id;

    private String auth_name;

    private String auth_code;

    private String auth_desc;

    private Integer auth_layer;

    private String auth_url;

    private Integer parent_id;

    private Integer orders;

    private Integer auth_type;

    private Integer is_valid;

}