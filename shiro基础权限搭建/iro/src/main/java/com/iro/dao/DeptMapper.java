package com.iro.dao;

import com.iro.pojo.Dept;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DeptMapper {

    int deleteByPrimaryKey(Integer deptId);
    int insert(Dept record);
    int insertSelective(Dept record);
    Dept selectByPrimaryKey(Integer deptId);
    int updateByPrimaryKeySelective(Dept record);
    int updateByPrimaryKey(Dept record);
}