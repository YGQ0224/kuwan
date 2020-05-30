package com.pojo;

import java.sql.Date;

public class Sale {
    private int vip_id;
    private String gameName;
    private String name;
    private String userImage;
    private String gameNick;
    private String gameLevel;
    private int price;
    private Date time;
    private String instroduce;
    private String saleImage;

    public String getSaleImage() {
        return saleImage;
    }

    public void setSaleImage(String saleImage) {
        this.saleImage = saleImage;
    }

    public int getVip_id() {
        return vip_id;
    }

    public void setVip_id(int vip_id) {
        this.vip_id = vip_id;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public String getGameNick() {
        return gameNick;
    }

    public void setGameNick(String gameNick) {
        this.gameNick = gameNick;
    }

    public String getGameLevel() {
        return gameLevel;
    }

    public void setGameLevel(String gameLevel) {
        this.gameLevel = gameLevel;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getInstroduce() {
        return instroduce;
    }

    public void setInstroduce(String instroduce) {
        this.instroduce = instroduce;
    }

    @Override
    public String toString() {
        return "Sale{" +
                "vip_id=" + vip_id +
                ", gameName='" + gameName + '\'' +
                ", name='" + name + '\'' +
                ", userImage='" + userImage + '\'' +
                ", gameNick='" + gameNick + '\'' +
                ", gameLevel='" + gameLevel + '\'' +
                ", price=" + price +
                ", time=" + time +
                ", instroduce='" + instroduce + '\'' +
                '}';
    }
}