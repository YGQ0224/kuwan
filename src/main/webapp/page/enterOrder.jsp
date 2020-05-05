<%@ page import="com.pojo.ShowSale" %>
<%@ page import="com.service.Show" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/4/30
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>确认订单</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/enterOrder.css">
</head>
<body>
<div id="main">
    <div id="head"></div>
    <div id="orderInfo">
        <%
            ShowSale showSale = (ShowSale) request.getAttribute("showSale");
            String saleNum = (String)request.getAttribute("saleNum");
        %>
        <span id="enterInfo">确认订单信息</span>
        <img id="gameImg" src="<%=request.getContextPath()%>/<%=showSale.getSaleImage()%>">
        <span id="saleInfo"><%=showSale.getGameName()%>/<%=showSale.getGameLevel()%>/<%=showSale.getTime()%></span>
        <p id="orderNum">订单编号：<%=saleNum%></p>
        <p id="marnInfo">注意：请在指定时间上线游戏并且搜索玩家昵称，玩家会提前一分钟上线等您。</p>
        <p id="price">合计：<span id="priceNum">￥<%=showSale.getPrice()%></span></p>

        <input type="button" id="entreBuy" value="立即购买" onclick="window.location.href='<%=request.getContextPath()%>/buy/transfer?money=<%=showSale.getMoney()%>&sale_id=<%=showSale.getSale_id()%>&orderNum=<%=saleNum%>&price=<%=showSale.getPrice()%>&user_id=<%=showSale.getUser_id()%>'">
    </div>
    <div id="bottom"></div>
</div>
</body>

