<%@ page import="com.pojo.Sale" %>
<%@ page import="com.pojo.Evaluate" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/4/29
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>评价及信息</title>
    <link rel="stylesheet" type="text/css" href="/kuwan/css/saleInfo.css">
</head>
<body>
<div id="main">
    <div id="headImg">
        <% Sale sale = (Sale)request.getAttribute("sale"); %>
        <p><img id="head" src="<%=request.getContextPath()%>/<%=sale.getUserImage()%>"><span id="userName"><%=sale.getName()%></span></p>
    </div>
    <div id="saleInfo">

        <p class="info">游戏类型:<%=sale.getGameName()%></p>
        <p class="info">游戏水平:<%=sale.getGameLevel()%></p>
        <p class="info">游戏昵称:<%=sale.getGameNick()%></p>
        <p class="info">可接时段:<%=sale.getTime()%></p>
        <p class="info">简单介绍:<%=sale.getInstroduce()%></p>
        <p class="info" id="price">价格：￥<%=sale.getPrice()%></p>

    </div>

    <div id="evaluate">
        <span id="eva">热门评价</span>
        <%if(request.getAttribute("list")!=null){
            List<Evaluate> list = (List<Evaluate>) request.getAttribute("list");
            for(int i =0;i<list.size();i++){%>
        <div class="evaInfo">
            <p class="evaP"><img class="evaHead" src="<%=request.getContextPath()%>/<%=list.get(i).getUserImage()%>"><span class="evaName"><%=list.get(i).getName()%></span></p>
            <span class="evaluate"><%=list.get(i).getEvaluate()%>
        </div>
            <%}}%>
    </div>
    <div id="bottom"></div>
</div>
</body>
</html>