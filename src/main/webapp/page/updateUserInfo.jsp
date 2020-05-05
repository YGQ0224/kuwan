<%@ page import="com.pojo.User" %>
<%@ page import="com.pojo.Vip" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/3
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改信息</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/updateUserInfo.css">
</head>
<body>
<div id="uploadsMain">
    <% User user = (User)session.getAttribute("user");
       Vip vip = null;
       if(session.getAttribute("vip")!=null){
           vip=(Vip)session.getAttribute("vip");
       }else if(session.getAttribute("vip")==null){
           vip=new Vip("无","无","无");
       }
    %>
    <form action="<%=request.getContextPath()%>/updateUserInfo/update" method="post">
        <p class="userInfo">昵 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp称：<input name="name" value="<%=user.getName()%>" class="userInfoInput" type="text"></p>
        <p class="userInfo">姓 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：<input value="<%=vip.getRealName()%>" class="userInfoInput" type="text" readonly="true"></p>
        <p class="userInfo">性 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别：<input name="sex" value="<%=user.getSex()%>" class="userInfoInput" type="text"></p>
        <p class="userInfo">生 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp日：<input name="birthday" value="<%=user.getBirthday()%>" class="userInfoInput" type="date"></p>
        <p class="userInfo">电 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp话：<input value="<%=vip.getTel()%>" class="userInfoInput" type="text" readonly="true"></p>
        <p class="userInfo">身份证号：<input value="<%=vip.getIdCard()%>" class="userInfoInput" type="text" readonly="true"></p>
        <input type="submit" value="修改" id="uploadSub">
    </form>
</div>
</body>
</html>
