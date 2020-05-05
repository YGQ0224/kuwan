package com.service.impl;

import com.dao.GameMapper;
import com.pojo.Game;
import com.pojo.ShowSale;
import com.service.Show;

import java.util.List;

public class ShowImpl implements Show {
    private GameMapper gameMapper;

    public void setGameMapper(GameMapper gameMapper) {
        this.gameMapper = gameMapper;
    }
    @Override
    public List<Game> showGame() {
        List<Game> list = gameMapper.selectAllGame(0);
        return list;
    }

    @Override
    public List<Game> showOther() {
        List<Game> list = gameMapper.selectAllGame(1);
        return list;
    }
}
