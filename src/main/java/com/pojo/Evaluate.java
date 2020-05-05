package com.pojo;

public class Evaluate {
    private String name;
    private String userImage;
    private String evaluate;

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

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

    @Override
    public String toString() {
        return "Evaluate{" +
                "name='" + name + '\'' +
                ", userImage='" + userImage + '\'' +
                ", evaluate='" + evaluate + '\'' +
                '}';
    }
}
