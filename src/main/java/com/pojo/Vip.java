package com.pojo;

public class Vip {
    private int vip_id;
    private String realName;
    private String idCard;
    private String tel;
    private int user_id;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Vip(String realName, String idCard, String tel) {
        this.realName = realName;
        this.idCard = idCard;
        this.tel = tel;
    }

    public int getVip_id() {
        return vip_id;
    }

    public void setVip_id(int vip_id) {
        this.vip_id = vip_id;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "Vip{" +
                "vip_id=" + vip_id +
                ", realName='" + realName + '\'' +
                ", idCard='" + idCard + '\'' +
                ", tel='" + tel + '\'' +
                ", user_id=" + user_id +
                '}';
    }
}
