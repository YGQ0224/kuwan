package com.service;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import com.pojo.Evaluate;

import java.util.List;

public interface ShowEvaluate {
    List<Evaluate> selectEvaluate(int vip_id);
}
