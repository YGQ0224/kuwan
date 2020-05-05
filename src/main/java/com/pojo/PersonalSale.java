package com.pojo;

import java.sql.Date;

public class PersonalSale {
    private int sale_id;
    private String gameName;
    private int money;
    private String saleImage;
    private int price;
    private Date time;
    private String gameLevel;
    private int saleFlag;

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

    public int getSaleFlag() {
        return saleFlag;
    }

    public void setSaleFlag(int saleFlag) {
        this.saleFlag = saleFlag;
    }

    @Override
    public String toString() {
        return "PersonalSale{" +
                "sale_id=" + sale_id +
                ", gameName='" + gameName + '\'' +
                ", money=" + money +
                ", saleImage='" + saleImage + '\'' +
                ", price=" + price +
                ", time=" + time +
                ", gameLevel='" + gameLevel + '\'' +
                ", saleFlag=" + saleFlag +
                '}';
    }
}
