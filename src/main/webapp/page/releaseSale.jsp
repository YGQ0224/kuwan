<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="com.service.impl.GetAllGameNameImpl" %>
<%@ page import="com.service.GetGameAllName" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/3
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/releaseSale.css">
</head>
<body>
<div id="releaseMain">
    <% User user =(User)session.getAttribute("user");
       if(user.getVipFlag()==1){%>
           <form action="<%=request.getContextPath()%>/releaseSale/release" method="post">
                <p class="realeaseInfo">
                    游戏名称：<input name="gameName" type="text" value="" list="gameName" class="releaseInput">
                    <datalist id="gameName">
                        <%ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
                            GetGameAllName getGameName = (GetGameAllName)ac.getBean("getGameName");
                            List<String> listGAmeName = getGameName.selectGameName();
                            for(int i =0;i<listGAmeName.size();i++){%>
                        <option><%=listGAmeName.get(i)%></option>
                        <%}%>
                    </datalist>
                </p>
                <!-- <p class="realeaseInfo">展示图片：<input type="text" value="" class="releaseInput"></p> -->
                <p class="realeaseInfo">价 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp格：<input name="price" type="text" value="" class="releaseInput"></p>
                <p class="realeaseInfo">时 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp间：<input name="time" type="date" value="" class="releaseInput"></p>
                <p class="realeaseInfo">游戏水平：<input name="gameLevel" type="text" value="" class="releaseInput"></p>
                <p class="realeaseInfo">游戏昵称：<input name="gameNick" type="text" value="" class="releaseInput"></p>
                <p class="realeaseInfo">简单介绍：<input name="instroduce" type="text" value="" class="releaseInput"></p>
                <p><input id="releasesub" type="submit" value="发布"></p>
           </form>
       <%}else if(user.getVipFlag()==0){%>
           <p id="releaseSaleWarnInfo">请先完成实名认证再来发布！</p>
       <%}%>


</div>

</body>
</html>
