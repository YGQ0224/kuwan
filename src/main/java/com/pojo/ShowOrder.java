package com.pojo;

import java.sql.Date;

public class ShowOrder {
    private String orderNum;
    private String gameName;
    private int money;
    private String saleImage;
    private int price;
    private Date time;
    private String gameLevel;
    private int orderFlag;

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getSaleImage() {
        return saleImage;
    }

    public void setSaleImage(String saleImage) {
        this.saleImage = saleImage;
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

    public String getGameLevel() {
        return gameLevel;
    }

    public void setGameLevel(String gameLevel) {
        this.gameLevel = gameLevel;
    }

    public int getOrderFlag() {
        return orderFlag;
    }

    public void setOrderFlag(int orderFlag) {
        this.orderFlag = orderFlag;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    @Override
    public String toString() {
        return "ShowOrder{" +
                "orderNum=" + orderNum +
                ", gameName='" + gameName + '\'' +
                ", money=" + money +
                ", saleImage='" + saleImage + '\'' +
                ", price=" + price +
                ", time=" + time +
                ", gameLevel='" + gameLevel + '\'' +
                ", orderFlag=" + orderFlag +
                '}';
    }
}
