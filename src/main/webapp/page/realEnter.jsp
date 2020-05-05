<%@ page import="com.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/2
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/realEnter.css">
</head>
<body>
<div id="realEnterMain">
    <% User user = (User)session.getAttribute("user");
        if(user.getVipFlag()==1){%>
            <p id="warnInfo">您已完成实名认证！</p>
        <%}else{%>
            <form action="<%=request.getContextPath()%>/insertVip/insert" method="post">
                <p class="realEnterInfo">姓 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：<input name="realName" class="realEnterInput" type="text" ></p>
                <p class="realEnterInfo">身份证号：<input class="realEnterInput" name="idCard" type="text" ></p>
                <p class="realEnterInfo">电话号码：<input class="realEnterInput" name="tel" type="text" ></p>
                <%--<p class="releaseInfo">支付账号：<input class="releaseInput" type="text" ></p>--%>
                <p class="realEnterInfo"><input id="realEnterBtn" type="submit" value="提交信息"></p>
            </form>
        <%}%>



</div>
</body>
</html>