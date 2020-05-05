<%--
  Created by IntelliJ IDEA.
  User: YGQ
  Date: 2020/4/22
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="/kuwan/css/register.css">
    <link rel="shortcut icon" href="/kuwan/image/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript" src="/kuwan/javascript/ajax.js"></script>
    <script type="text/javascript">
        window.onload=function(){
            var oName=document.getElementById("name");
            var oImg = document.getElementById("img");
            oName.onblur=function(){
                var key = oName.name;
                var value = oName.value;
                var dat = "{"+"\""+key+"\""+":"+"\""+value+"\""+"}";
                ajax(dat,"../Register/VerifyName",function(str){
                    oImg.src=eval("("+str+")").message;
                    },function() {
                        alert("没有找到资源")
                    }
                )

            }

            var oEPassword = document.getElementById("enterPassword");
            var oPassword = document.getElementById("password");
            var oImg1 = document.getElementById("img1");
            oEPassword.onblur=function(){
                if(oEPassword.value!==oPassword.value){
                    oImg1.src="/kuwan/image/nameError.png";
                    oEPassword.value="";
                }else{
                    oImg1.src="/kuwan/image/nameRight.png";
                }
            }
        }
    </script>
</head>
<body>
<div id="main">
    <div id="top">
        请输入用户信息
    </div>
    <div id="bottom">
        <form action="../Register/insertUser" method="POST">

            <p ><input type="text" id="name" placeholder="昵称" name="name" title="请输入昵称" required><img id="img"></p>

            <p><input type="password" id="password" placeholder="密码" name="password" title="请输入密码" required></p>

            <p><input type="password" id="enterPassword" placeholder="确认密码"title="再次输入密码，两次输入要一致" required><img id="img1"></p>

            <p><input type="text" id="sex" placeholder="男或女" name="sex" title="请输入性别" required pattern="[男女]"></p>

            <p><input type="date" id="birthday" placeholder="生日" name="birthday" title="请输入生日" required></p>

            <p><input type="submit" id="submit" value="注册"></p>

        </form>
    </div>
</div>
</body>
</html>