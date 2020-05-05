<%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/3
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>评论</title>
    <%String orderNum = request.getParameter("orderNum");%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/addEvaluate.css">
</head>
<body>
<div id="evaMain">
    <form action="<%=request.getContextPath()%>/updateEva/update" method="post">
        <p id="evaP">评论：</p>
        <input type="text" name="orderNum" value="<%=orderNum%>" style="display: none">
        <p><textarea name="evaluate" id="evaText"></textarea></p>
        <input type="submit" id="evaSub" value="提交">
    </form>
</div>
</body>
</html>
