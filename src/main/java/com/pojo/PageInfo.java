package com.pojo;

public class PageInfo {

    private int user_id;

    private int game_id;
    //总页数
    private int totelPage;
    //总记录数
    private int totelNum;
    //每页显示的记录数
    private int pageSize = 8;
    //当前页面
    private int currentPage;
    //开始索引
    private int startIndex;
    //结束索引
    private int endIndex;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getTotelPage() {
        return totelPage;
    }

    public void setTotelPage(int totelPage) {
        this.totelPage = totelPage;
    }

    public int getTotelNum() {
        return totelNum;
    }

    public void setTotelNum(int totelNum) {
        this.totelNum = totelNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getGame_id() {
        return game_id;
    }

    public void setGame_id(int game_id) {
        this.game_id = game_id;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getEndIndex() {
        return endIndex;
    }

    public void setEndIndex(int endIndex) {
        this.endIndex = endIndex;
    }

    @Override
    public String toString() {
        return "PageInfo{" +
                "user_id=" + user_id +
                ", game_id=" + game_id +
                ", totelPage=" + totelPage +
                ", totelNum=" + totelNum +
                ", pageSize=" + pageSize +
                ", currentPage=" + currentPage +
                ", startIndex=" + startIndex +
                ", endIndex=" + endIndex +
                '}';
    }
}
