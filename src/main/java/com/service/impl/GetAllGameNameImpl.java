package com.service.impl;

import com.dao.GameMapper;
import com.service.GetGameAllName;

import java.util.List;

public class GetAllGameNameImpl implements GetGameAllName {
    private GameMapper game;

    public void setGame(GameMapper game) {
        this.game = game;
    }

    @Override
    public List<String> selectGameName() {
        return game.selectAllGameName();
    }
}
