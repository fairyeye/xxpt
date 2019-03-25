# xxpt
毕设初稿。
2019年3月22日17:17:21
引入top状态栏，添加未登录判断。

2019年3月25日16:49:27</br>
简单的登录判断</br>
<script language="JavaScript">
    var us = "${sessionScope.user.uId}";
    if (0==us.trim().length){
        alert("请登录后操作！")
        window.location.href="login";
    }
</script>
