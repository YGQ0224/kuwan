<%@ page import="com.pojo.ShowOrder" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pojo.PersonalSale" %><%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/5/1
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/personal.css">
    <script rel="script" type="text/javascript">
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
            var oPersonalInfo=document.getElementById("personalInfo");
            var oPersonalSale=document.getElementById("personalSale");
            var oPersonalMoney=document.getElementById("personalMoney");
            var orderInfo=document.getElementById("orderInfo1");
            var oRealEnter=document.getElementById("realEnter");
            var oReleaseSale=document.getElementById("releaseSale");

            var oPersonalInfo1=document.getElementById("1");
            var oPersonalSale2=document.getElementById("2");
            var oPersonalMoney3=document.getElementById("3");
            var orderInfo4=document.getElementById("4");
            var oRealEnter5=document.getElementById("5");
            var oReleaseSale6=document.getElementById("6");



            oReleaseSale.onclick=function () {
                oReleaseSale6.style.display="block";
                oReleaseSale.parentElement.style.backgroundColor="white"
                oRealEnter5.style.display = "none";
                oRealEnter.parentElement.style.backgroundColor = "";
                oPersonalInfo1.style.display = "none";
                oPersonalInfo.parentElement.style.backgroundColor = "";
                oPersonalSale2.style.display = "none";
                oPersonalSale.parentElement.style.backgroundColor = "";
                oPersonalMoney3.style.display = "none";
                oPersonalMoney.parentElement.style.backgroundColor = "";
                orderInfo4.style.display = "none";
                orderInfo.parentElement.style.backgroundColor = "";
                return false;
            }

            oRealEnter.onclick=function () {
                oReleaseSale6.style.display="none";
                oReleaseSale.parentElement.style.backgroundColor=""
                oRealEnter5.style.display = "block";
                oRealEnter.parentElement.style.backgroundColor = "white";
                oPersonalInfo1.style.display = "none";
                oPersonalInfo.parentElement.style.backgroundColor = "";
                oPersonalSale2.style.display = "none";
                oPersonalSale.parentElement.style.backgroundColor = "";
                oPersonalMoney3.style.display = "none";
                oPersonalMoney.parentElement.style.backgroundColor = "";
                orderInfo4.style.display = "none";
                orderInfo.parentElement.style.backgroundColor = "";
                return false;
            }

            oPersonalInfo.onclick=function () {
                oReleaseSale6.style.display="none";
                oReleaseSale.parentElement.style.backgroundColor=""
                oPersonalInfo1.style.display="block";
                oPersonalInfo.parentElement.style.backgroundColor="white";
                oPersonalSale2.style.display="none";
                oPersonalSale.parentElement.style.backgroundColor="";
                oPersonalMoney3.style.display="none";
                oPersonalMoney.parentElement.style.backgroundColor="";
                orderInfo4.style.display="none";
                orderInfo.parentElement.style.backgroundColor="";
                oRealEnter5.style.display="none";
                oRealEnter.parentElement.style.backgroundColor="";
                return false;
            }

            oPersonalSale.onclick=function () {
                oReleaseSale6.style.display="none";
                oReleaseSale.parentElement.style.backgroundColor=""
                oPersonalInfo1.style.display="none";
                oPersonalInfo.parentElement.style.backgroundColor="";
                oPersonalSale2.style.display="block";
                oPersonalSale.parentElement.style.backgroundColor="white";
                oPersonalMoney3.style.display="none";
                oPersonalMoney.parentElement.style.backgroundColor="";
                orderInfo4.style.display="none";
                orderInfo.parentElement.style.backgroundColor="";
                oRealEnter5.style.display="none";
                oRealEnter.parentElement.style.backgroundColor="";
                return false;
            }

            oPersonalMoney.onclick=function () {
                oReleaseSale6.style.display="none";
                oReleaseSale.parentElement.style.backgroundColor=""
                oPersonalInfo1.style.display="none";
                oPersonalInfo.parentElement.style.backgroundColor="";
                oPersonalSale2.style.display="none";
                oPersonalSale.parentElement.style.backgroundColor="";
                oPersonalMoney3.style.display="block";
                oPersonalMoney.parentElement.style.backgroundColor="white";
                orderInfo4.style.display="none";
                orderInfo.parentElement.style.backgroundColor="";
                oRealEnter5.style.display="none";
                oRealEnter.parentElement.style.backgroundColor="";
                return false;
            }

            orderInfo.onclick=function () {
                oReleaseSale6.style.display="none";
                oReleaseSale.parentElement.style.backgroundColor=""
                oPersonalInfo1.style.display="none";
                oPersonalInfo.parentElement.style.backgroundColor="";
                oPersonalSale2.style.display="none";
                oPersonalSale.parentElement.style.backgroundColor="";
                oPersonalMoney3.style.display="none";
                oPersonalMoney.parentElement.style.backgroundColor="";
                orderInfo4.style.display="block";
                orderInfo.parentElement.style.backgroundColor="white";
                oRealEnter5.style.display="none";
                oRealEnter.parentElement.style.backgroundColor="";
                return false;
            }
            goIndex();
            var count = setInterval("goIndex()" ,3500);
        }
    </script>
</head>
<body>
    <div id="main">
        <div id="head">
            <ul class="list">
                <li class="item"><img src="<%=request.getContextPath()%>/image/buluochongtu.jpg" alt="" class="carImg"></li>
                <li class="item"><img src="<%=request.getContextPath()%>/image/wangzherongyao.jpg" alt="" class="carImg"></li>
                <li class="item"><img src="<%=request.getContextPath()%>/image/cijizhanchang.jpg" alt="" class="carImg"></li>
                <li class="item"><img src="<%=request.getContextPath()%>/image/yinxionlianmeng.jpg" alt="" class="carImg"></li>
                <li class="item"><img src="<%=request.getContextPath()%>/image/wodeshijie.jpg" alt="" class="carImg"></li>
            </ul>
        </div>
        <div id="headNav"><a href="<%=request.getContextPath()%>/index.jsp" id="index">返回首页</a></div>
            <div id="context">
                <div id="leftNav">
                    <p class="leftNavList" style="background-color: white"><a id="personalInfo" href="">我的信息</a></p>
                    <p class="leftNavList"><a id="realEnter" href="">实名认证</a></p>
                    <p class="leftNavList"><a id="orderInfo1" href="">我的订单</a></p>
                    <p class="leftNavList"><a id="releaseSale" href="">发布订单</a></p>
                    <p class="leftNavList"><a id="personalSale" href="">我的发布</a></p>
                    <p class="leftNavList"><a id="personalMoney" href="">我的余额</a></p>
                </div>
                <div id="rightContext">
                    <%
                        if(request.getAttribute("list")==null || request.getAttribute("listSale")==null){
                            response.sendRedirect(request.getContextPath()+"/showPersonal/show?currentPage=0");
                        }%>
                    <div id="1" style="display: block"><jsp:include page="personalInfo.jsp"></jsp:include></div>
                    <div id="2" style="display: none">
                        <div id="saleInfo">
                            <%  if(request.getAttribute("listSale")!=null){
                                List<PersonalSale> listSale = null;
                                listSale = (List<PersonalSale>) request.getAttribute("listSale");
                                //System.out.print(listSale);
                                        if(listSale.size()>0){
                                            for(int i =0;i<listSale.size();i++){%>
                                                <div class="saleInfoList">
                                                    <img class="orderImg" src="<%=request.getContextPath()%>/<%=listSale.get(i).getSaleImage()%>">
                                                    <span class="orderInfo"><%=listSale.get(i).getGameName()%>/<%=listSale.get(i).getTime()%>/<%=listSale.get(i).getGameLevel()%></span>
                                                    <%
                                                        String state = listSale.get(i).getSaleFlag()==1 ? "已出售" : "正在出售";
                                                        String evaBtn = listSale.get(i).getSaleFlag()==1 ? "删除" : "下架";
                                                        %>
                                                    <span class="state1"><%=state%></span>
                                                    <input type="button" value="<%=evaBtn%>" class="evaBtn" onclick="window.location.href='<%=request.getContextPath()%>/deleteSale/delete?sale_id=<%=listSale.get(i).getSale_id()%>'">
                                                </div>
                                    <%}}else if(listSale.size()==0){%>
                                        <p id="saleWarnInfo">您还没有发布任何订单！</p>
                                    <%}}%>

                        </div>
                    </div>
                    <div id="4" style="display: none">
                        <div id="orderInfo">
                            <%if(request.getAttribute("list")!=null){
                                List<ShowOrder> list1 = null;
                                list1 = (List<ShowOrder>) request.getAttribute("list");
                                if(list1.size()>0){
                                    for(int i =0;i<list1.size();i++){%>
                                        <div class="orderInfoList">
                                            <img class="saleImg" src="<%=request.getContextPath()%>/<%=list1.get(i).getSaleImage()%>">
                                            <span class="saleInfo"><%=list1.get(i).getGameName()%>/<%=list1.get(i).getTime()%>/<%=list1.get(i).getGameLevel()%></span>
                                            <% String value = list1.get(i).getOrderFlag()==1 ? "已评价" : "评价"; %>
                                            <%if(value.equals("已评价")){%>
                                                <input type="button" value="<%=value%>" class="evaBut" style="background-color: grey;cursor:default">
                                            <%}else if(value.equals("评价")){%>
                                                <input type="button" value="<%=value%>" class="evaBut" onclick="window.location.href='<%=request.getContextPath()%>/page/addEvaluate.jsp?orderNum=<%=list1.get(i).getOrderNum()%>'">
                                            <%}%>
                                        </div>
                                <%}}else if(list1.size()==0){%>
                                    <p id="orderWarnInfo">您还没有购买任何订单！</p>
                            <%}}%>

                        </div>
                    </div>
                    <div id="3" style="display: none"><jsp:include page="personalMoney.jsp"></jsp:include></div>
                    <div id="5" style="display: none"><jsp:include page="realEnter.jsp"></jsp:include></div>
                    <div id="6" style="display: none"><jsp:include page="releaseSale.jsp"></jsp:include></div>
                </div>
            </div>
        <div  id="bottom"></div>
    </div>
   <%-- <script type="text/javascript">
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
    </script>--%>
</body>
</html>

