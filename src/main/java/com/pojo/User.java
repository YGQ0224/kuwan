package com.pojo;

import java.sql.Date;

public class User {
    private int user_id;
    private String name;
    private String password;
    private Date birthday;
    private char sex;
    private String userImage;
    private int money;
    private int vipFlag;

    public int getVipFlag() {
        return vipFlag;
    }

    public void setVipFlag(int vipFlag) {
        this.vipFlag = vipFlag;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", birthday=" + birthday +
                ", sex=" + sex +
                ", userImage='" + userImage + '\'' +
                ", money=" + money +
                ", vipFlag=" + vipFlag +
                '}';
    }
}
