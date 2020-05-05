<%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/4/22
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>欢迎登录</title>
    <link rel="stylesheet" type="text/css" href="/kuwan/css/login.css">
    <link rel="shortcut icon" href="/kuwan/image/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript" src="/kuwan/javascript/ajax.js"></script>
    <script type="text/javascript">
        window.onload=function () {
            var oName=document.getElementById("name");
            var oPassword=document.getElementById("password");
            var oSubmit=document.getElementById("submit");
            var oImg=document.getElementById("img");
            oName.onblur=function () {
                var key=oName.name;
                var value=oName.value;
                var dat = "{"+"\""+key+"\""+":"+"\""+value+"\""+"}";

                ajax(dat,"../Login/verifyName",function(str){
                    oImg.src=eval("("+str+")").message;
                },function() {
                    alert("没有找到资源");
                })
                return false;
            }
           /* oSubmit.onclick=function () {
                var nkey=oName.name;
                var nvalue=oName.value;
                var pkey=oPassword.name;
                var pvalue=oPassword.value;
                var dat = "{"+"\""+nkey+"\""+":"+"\""+nvalue+"\""+","+"\""+pkey+"\""+":"+"\""+pvalue+"\""+"}";

                ajax(dat,"../Login/verifyName",function(str){
                    oImg.src=eval("("+str+")").message;
                },function() {
                    alert("没有找到资源");
                })
                return false;
            }*/
        }
    </script>
</head>
<body>
<% String info = (String)request.getAttribute("info");%>
<div id="contain">
    <form action="../Login/verifyLogin" method="POST">
        <p>昵称：<input type="text" id="name" class="text" name="name"><img id="img"></p>

        <p>密码：<input type="password" id="password" class="text" name="password">
        <% if(info!=null){ %>
        <img src=<%=info%>>
        <%}%></p>
        <input type="submit" id="submit" value="登录">
        <div id="register">
            <label>如果您是新用户，请先<a href="register.jsp">注册</a>!</label>
        </div>
    </form>
</div>
</body>
</html>
