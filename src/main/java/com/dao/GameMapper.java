package com.dao;

import com.pojo.Game;

import java.util.List;

public interface GameMapper {
    List<Game> selectAllGame(int type);
    List<String> selectAllGameName();
}
