# xxpt
毕设初稿。</br>
2019年3月22日17:17:21</br>
引入top状态栏，添加未登录判断。</br></br>

2019年3月25日16:49:27</br>
简单的登录判断</br>
<script language="JavaScript"></br>
    var us = "${sessionScope.user.uId}";</br>
    if (0==us.trim().length){</br>
        alert("请登录后操作！")</br>
        window.location.href="login";</br>
    }</br>
</script></br>
