package com.pojo;

import java.sql.Date;

public class ShowSale {
    private int sale_id;
    private String gameName;
    private int money;
    private String name;
    private String saleImage;
    private int price;
    private Date time;
    private String gameLevel;
    private int user_id;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getSale_id() {
        return sale_id;
    }

    public void setSale_id(int sale_id) {
        this.sale_id = sale_id;
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

    @Override
    public String toString() {
        return "ShowSale{" +
                "sale_id=" + sale_id +
                ", gameName='" + gameName + '\'' +
                ", money=" + money +
                ", name='" + name + '\'' +
                ", saleImage='" + saleImage + '\'' +
                ", price=" + price +
                ", time=" + time +
                ", gameLevel='" + gameLevel + '\'' +
                ", user_id=" + user_id +
                '}';
    }
}
