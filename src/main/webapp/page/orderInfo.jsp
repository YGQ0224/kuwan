<%@ page import="java.util.List" %>
<%@ page import="com.pojo.ShowOrder" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/1
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/orderInfo.css">
</head>
<body>
<div id="orderInfo">
    <% List<ShowOrder> list=null;
        if(request.getAttribute("list")==null) {

            list = (List<ShowOrder>) request.getAttribute("list");
            for(int i =0;i<list.size();i++){%>
                <div class="orderInfoList">
                    <img class="saleImg" src="<%=request.getContextPath()%>/<%=list.get(i).getSaleImage()%>">
                    <span class="saleInfo"><%=list.get(i).getGameName()%>/<%=list.get(i).getTime()%>/<%=list.get(i).getGameLevel()%></span>
                    <% String value = list.get(i).getOrderFlag()==1 ? "已评价" : "评价"; %>
                    <input type="button" value="<%=value%>" class="evaBut" onclick="">
                </div>
    <%}}%>
    <a href="<%=request.getContextPath()%>/showPersonalOrder/show?currentPage=0">链接</a>
</div>
</body>
</html>