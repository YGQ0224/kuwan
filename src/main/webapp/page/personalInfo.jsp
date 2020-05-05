<%@ page import="com.pojo.User" %>
<%@ page import="com.pojo.Vip" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/1
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/personalInfo.css">
</head>
<body>
<div id="personalInfoMain">
    <%
        User user = (User)session.getAttribute("user");
        Vip vip = null;
        if(session.getAttribute("vip")!=null){
            vip = (Vip)request.getSession().getAttribute("vip");
        }else{
            vip = new Vip("请先完成实名认证","请先完成实名认证","请先完成实名认证");
        }
    %>
    <p class="personalInfo">头 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp像：<img id="personalImg" src="<%=request.getContextPath()%>/<%=user.getUserImage()%>">
        <form id="changeImg" action="<%=request.getContextPath()%>/uploadUserImage/upload" method="post" enctype="multipart/form-data">
            重新上传头像：<input id="upload" type="file" name="uploads">
            <input id="uploadSub" type="submit" value="上传">
        </form>
    </p>
    <p class="personalInfo">昵 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp称：<span class="personalValue"><%=user.getName()%></span></p>
    <p class="personalInfo">姓 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：<span class="personalValue"><%=vip.getRealName()%></span></p>
    <p class="personalInfo">性 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别：<span class="personalValue"><%=user.getSex()%></span></p>
    <p class="personalInfo">生 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp日：<span class="personalValue"><%=user.getBirthday()%></span></p>
    <p class="personalInfo">电 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp话：<span class="personalValue"><%=vip.getTel()%></span></p>
    <p class="personalInfo">身份证号：<span class="personalValue"><%=vip.getIdCard()%></span></p>
    <p id="personalChangeButton"><input type="button" value="修改信息" id="personalbutton" onclick="window.location.href='<%=request.getContextPath()%>/page/updateUserInfo.jsp'"></p>
</div>
</body>
</html>
