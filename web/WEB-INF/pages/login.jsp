<%--
  Date: 2021/12/10
  Time: 9:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="icon" href="https://s3.bmp.ovh/imgs/2021/12/b79016db8c4c54f2.png" type="image/x-icon">
    <link rel="shortcut icon" href="https://s3.bmp.ovh/imgs/2021/12/b79016db8c4c54f2.png" type="image/x-icon">
    <meta charset="utf-8"/>
    <%--BootStrap--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/noscript.css"/>
    </noscript>
</head>
<body class="is-preload">
<div id="wrapper">
    <div id="bg"></div>
    <div id="overlay"></div>
    <div id="main">

        <!-- Header -->
        <header id="header">
            <h1>Lorem Ipsum</h1>
            <p>校园卡管理系统</p>
            <form class="form-inline" action="${pageContext.request.contextPath}/login" method="post">
                <div class="form-group">
                    <label>ID</label>
                    <input type="text" class="form-control" name="id" style="text-align: center">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="pwd" style="text-align: center">
                </div>
                <button type="submit" class="btn btn-default">Login</button>
            </form>
            <span style="color: red;font-weight: bold">${error}</span>
            <nav>
                <ul>
                    <li><a href="tencent://AddContact/?fromId=45&fromSubId=1&subcmd=all&uin=2709607389&website=www.oicqzone.com" class="icon brands fa-qq"><span class="label">QQ</span></a></li>
                    <li><a href="#" class="icon brands fa-weixin"><span class="label">Wechat</span></a></li>
                    <li><a href="https://github.com/pininkara" class="icon brands fa-github"><span class="label">Github</span></a></li>
                    <li><a href="Mailto:pininkara@outlook.com" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
                </ul>
            </nav>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <span class="copyright">&copy; Powered by: <a href="https://github.com/pininkara">晨曦蒙雾</a>.</span>
        </footer>

    </div>
</div>
<script>
    window.onload = function () {
        document.body.classList.remove('is-preload');
    }
    window.ontouchmove = function () {
        return false;
    }
    window.onorientationchange = function () {
        document.body.scrollTop = 0;
    }
</script>
</body>
</html>
