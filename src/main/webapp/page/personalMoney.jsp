<%@ page import="com.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/1
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/personalMoney.css">
</head>
<%--<body>--%>
<%
    User user = (User)session.getAttribute("user");
%>
<div id="moneyMain">
    <span id="moneySpan">余额：￥<%=user.getMoney()%></span>
    <input type="button" id="returnBtn" onclick="" value="返回个人中心">
</div>
<%--</body>--%>
<%--</html>--%>