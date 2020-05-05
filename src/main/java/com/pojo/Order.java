package com.pojo;

public class Order {
    private String orderNum;
    private int sale_id;
    private int user_id;
    private String evaluate;

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public int getSale_id() {
        return sale_id;
    }

    public void setSale_id(int sale_id) {
        this.sale_id = sale_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderNum='" + orderNum + '\'' +
                ", sale_id=" + sale_id +
                ", user_id=" + user_id +
                ", evaluate='" + evaluate + '\'' +
                '}';
    }
}
