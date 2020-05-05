function ajax(data,url,success,fail) {
    /*获取ajax对象*/
    var oAjax = new XMLHttpRequest();
    /*连接服务器*/
    oAjax.open("POST",url+"?t="+new Date().getTime());
    /*设置请求头，传json格式的数据*/
    oAjax.setRequestHeader("Content-Type","application/json");
    oAjax.send(data);
    /*处理获取的数据*/
    oAjax.onreadystatechange=function(){
        if(oAjax.readyState==4){
            if(oAjax.status==200){
                success(oAjax.responseText);
            }else{
                fail();
            }
        }
    }
}