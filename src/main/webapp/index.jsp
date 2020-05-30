
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="com.service.Show" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pojo.Game" %>
<%@ page import="com.pojo.ShowSale" %>
<%@ page import="com.pojo.User" %>
<%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/4/22
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>酷玩</title>
    <link rel="stylesheet" type="text/css" href="/kuwan/css/index.css"/>
</head>
<body>
<div id="head">
    <% if(session.getAttribute("user")!=null){
        User user = (User)session.getAttribute("user");
    %>
    <p id="headWarn"><a id="userName" href="<%=request.getContextPath()%>/page/personal.jsp">个人中心</a><img id="headImg" src="<%=request.getContextPath()%>/<%=user.getUserImage()%>"><a id="logOut" href="<%=request.getContextPath()%>/logOut/out">注销</a></p>
    <%}else if(session.getAttribute("user")==null){%>
    <p id="headWarn">您好，请先<a id="logInfo" href="<%=request.getContextPath()%>/page/login.jsp">登录</a>或<a id="regInfo" href="<%=request.getContextPath()%>/page/register.jsp">注册</a>!</p>
    <%}%>
</div>
<div id=navImage>
    <div id="wrap">
        <ul class="list">
            <li class="item"><img src="<%=request.getContextPath()%>/image/buluochongtu.jpg" alt="" class="carImg"></li>
            <li class="item"><img src="<%=request.getContextPath()%>/image/wangzherongyao.jpg" alt="" class="carImg"></li>
            <li class="item"><img src="<%=request.getContextPath()%>/image/cijizhanchang.jpg" alt="" class="carImg"></li>
            <li class="item"><img src="<%=request.getContextPath()%>/image/yinxionlianmeng.jpg" alt="" class="carImg"></li>
            <li class="item"><img src="<%=request.getContextPath()%>/image/wodeshijie.jpg" alt="" class="carImg"></li>
        </ul>
    </div>
</div>
<div id="main">
    <div id="leftnav">
        <div id="game">游戏</div>
        <% ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
            Show show=(Show)ac.getBean("show");
            List<Game> listGame = show.showGame();
            List<Game> listOther = show.showOther();
        %>
        <ul>
            <% if(listGame.size()>0){
                for(int i=0;i<listGame.size();i++){%>
                    <a href="<%=request.getContextPath()%>/showMain/showSlae?startIndex=0&endIndex=8&game_id=<%=listGame.get(i).getGame_id()%>&currentPage=1"><li><p><img src="<%=request.getContextPath()%>/<%=listGame.get(i).getGameImage()%>"></p><p><%=listGame.get(i).getGameName()%></p></li></a>
            <%}}%>
        </ul>
        <div id="other">其他</div>
        <ul>
            <% if(listOther.size()>0){
                for(int i=0;i<listOther.size();i++){
                int gameOther_id = listOther.get(i).getGame_id();%>
            <a href="<%=request.getContextPath()%>/showMain/showSlae?startIndex=0&endIndex=8&game_id=<%=gameOther_id%>&currentPage=1"><li><p><img src="<%=request.getContextPath()%>/<%=listOther.get(i).getGameImage()%>"></p><p><%=listOther.get(i).getGameName()%></p></li></a>
            <%}}%>
        </ul>
    </div>
    <div id="rightContext">
        <div id="rightContext1">
            <% if(request.getAttribute("list")!=null){
                List<ShowSale> list = (List<ShowSale>) request.getAttribute("list");
            for(int i =0;i<list.size();i++){%>
            <div class="box">
                <img class="goodsImg" src="<%=request.getContextPath()%>/<%=list.get(i).getSaleImage()%>">
                <span class="showName"><%=list.get(i).getName()%></span>
                <span class="gameType"><%=list.get(i).getGameName()%></span></p>
                <p class="infoP"><a class="infoA" href="<%=request.getContextPath()%>/showSale/show?sale_id=<%=list.get(i).getSale_id()%>">评价及信息</a></p>
                <p class="buyInfo"><span class="price">￥<%=list.get(i).getPrice()%></span>
                <input class="buyUrl" type="button" value="购买" onclick="window.location.href='<%=request.getContextPath()%>/enterBuy/buy?saleImage=<%=list.get(i).getSaleImage()%>&gameName=<%=list.get(i).getGameName()%>&price=<%=list.get(i).getPrice()%>&time=<%=list.get(i).getTime()%>&gameLevel=<%=list.get(i).getGameLevel()%>&money=<%=list.get(i).getMoney()%>&sale_id=<%=list.get(i).getSale_id()%>&user_id=<%=list.get(i).getUser_id()%>'">
                </p>
            </div>
            <%}}else{
                if(request.getAttribute("list1")==null){
                response.sendRedirect(request.getContextPath()+"/showMain/showAllSale?currentPage=1&startIndex=0&endIndex=8");
                }
                if(request.getAttribute("list1")!=null) {
                    List<ShowSale> list1= (List<ShowSale>)request.getAttribute("list1");
                    for(int i =0;i<list1.size();i++){%>
            <div class="box">
                <img class="goodsImg" src="<%=request.getContextPath()%>/<%=list1.get(i).getSaleImage()%>">
                <span class="showName"><%=list1.get(i).getName()%></span>
                <span class="gameType"><%=list1.get(i).getGameName()%></span>
                <p class="infoP"><a class="infoA" href="<%=request.getContextPath()%>/showSale/show?sale_id=<%=list1.get(i).getSale_id()%>">评价及信息</a></p>
                <p class="buyInfo"><span class="price">￥<%=list1.get(i).getPrice()%></span>
                <input class="buyUrl" type="button" value="购买" onclick="window.location.href='<%=request.getContextPath()%>/enterBuy/buy?saleImage=<%=list1.get(i).getSaleImage()%>&gameName=<%=list1.get(i).getGameName()%>&price=<%=list1.get(i).getPrice()%>&time=<%=list1.get(i).getTime()%>&gameLevel=<%=list1.get(i).getGameLevel()%>&money=<%=list1.get(i).getMoney()%>&sale_id=<%=list1.get(i).getSale_id()%>&user_id=<%=list1.get(i).getUser_id()%>'">
                </p>
            </div>
                <%}}}%>
        </div>
        <div id="nav">
            <div id="navNum">
                <span id="di">第</span>
                <% if(request.getAttribute("pageCount")!=null) {
                    int pageCount = (int) request.getAttribute("pageCount");
                    int game_id = (int)request.getAttribute("game_id");
                    for(int i =1;i<=pageCount;i++){
                        int startIndex = (i-1)*8;
                %>
                <a href="<%=request.getContextPath()%>/showMain/showSlae?startIndex=<%=startIndex%>&endIndex=8&game_id=<%=game_id%>&currentPage=<%=i%>"><span class="navNum"><%=i%></span></a>
                <%}}else if(request.getAttribute("pageCount1")!=null){
                    int pageCount = (int) request.getAttribute("pageCount1");
                    for(int i =1;i<=pageCount;i++){
                        int startIndex = (i-1)*8;%>
                <a href="<%=request.getContextPath()%>/showMain/showAllSale?startIndex=<%=startIndex%>&endIndex=8&currentPage=<%=i%>"><span class="navNum"><%=i%></span></a>
                <%}}%>
                <span id="ye">页</span>
            </div>
            <div id="pageChange">
                <%if(request.getAttribute("currentPage")!=null) {
                    int currentPage = (int) request.getAttribute("currentPage");
                    int pageCount = (int)request.getAttribute("pageCount");
                    int lastCurrentPage = (currentPage-1)<=0 ? 1 : (currentPage-1);
                    int nextCurrentPage = (currentPage+1)>pageCount ? pageCount : (currentPage+1);
                    int game_id = (int) request.getAttribute("game_id");
                %>
                <a class="navYe" href="<%=request.getContextPath()%>/showMain/showSlae?startIndex=<%=(lastCurrentPage-1)*8%>&endIndex=8&game_id=<%=game_id%>&currentPage=<%=lastCurrentPage%>">上一页</a>
                <a class="navYe" href="<%=request.getContextPath()%>/showMain/showSlae?startIndex=<%=(nextCurrentPage-1)*8%>&endIndex=8&game_id=<%=game_id%>&currentPage=<%=nextCurrentPage%>">下一页</a>
                <%}else if(request.getAttribute("currentPage1")!=null){
                    int currentPage = (int) request.getAttribute("currentPage1");
                    int pageCount = (int)request.getAttribute("pageCount1");
                    int lastCurrentPage = (currentPage-1)<=0 ? 1 : (currentPage-1);
                    int nextCurrentPage = (currentPage+1)>pageCount ? pageCount : (currentPage+1);%>
                <a class="navYe" href="<%=request.getContextPath()%>/showMain/showAllSale?startIndex=<%=(lastCurrentPage-1)*8%>&endIndex=8&currentPage=<%=lastCurrentPage%>">上一页</a>
                <a class="navYe" href="<%=request.getContextPath()%>/showMain/showAllSale?startIndex=<%=(nextCurrentPage-1)*8%>&endIndex=8&currentPage=<%=nextCurrentPage%>">下一页</a>

                <%}%>
            </div>
        </div>
    </div>
</div>
<div id="bottom">

</div>
<script type="text/javascript">
    var items=document.getElementsByClassName('item');
    var index=0;
    function clear(){
        for(var i=0;i<items.length;i++){
            items[i].className='item';
        }
    }
    function goIndex(){
        if(index<5 && index>=0){
            clear();
            items[index].className='item active';
            index++;
        }else{
            index=0;
            clear();
            items[index].className='item active';
        }

    }
    window.onload=function(){
        goIndex();
        var count = setInterval("goIndex()" ,3500);
    }
</script>
</body>
</html>
