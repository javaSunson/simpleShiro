package com.iro.dao;

import com.iro.pojo.Receipt;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReceiptMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Receipt record);

    int insertSelective(Receipt record);


    Receipt selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Receipt record);

    int updateByPrimaryKey(Receipt record);
}