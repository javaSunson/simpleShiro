package com.iro.dao;

import com.iro.pojo.Receipt_History;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Receipt_HistoryMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Receipt_History record);

    int insertSelective(Receipt_History record);


    Receipt_History selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Receipt_History record);

    int updateByPrimaryKey(Receipt_History record);
}