package com.pojo;

public class Game {
    private int game_id;
    private String gameName;
    private String gameType;
    private String gameImage;

    public int getGame_id() {
        return game_id;
    }

    public void setGame_id(int game_id) {
        this.game_id = game_id;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getGameType() {
        return gameType;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public String getGameImage() {
        return gameImage;
    }

    public void setGameImage(String gameImage) {
        this.gameImage = gameImage;
    }

    @Override
    public String toString() {
        return "Game{" +
                "game_id=" + game_id +
                ", gameName='" + gameName + '\'' +
                ", gameType='" + gameType + '\'' +
                ", gameImage='" + gameImage + '\'' +
                '}';
    }
}
