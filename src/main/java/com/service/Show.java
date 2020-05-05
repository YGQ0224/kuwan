package com.service;

import com.pojo.Game;
import com.pojo.ShowSale;

import java.util.List;

public interface Show {
    List<Game> showGame();
    List<Game> showOther();
}
