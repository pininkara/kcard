<%--
  Date: 2021/12/8
  Time: 11:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>

    <style>
        a{
            text-decoration: navajowhite;
            color: mediumvioletred;
            font-size: 18px;
        }
        h3{
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 5px;
        }
    </style>

</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/toLogin">登录页面</a>
</h3>
<h3>
    <a href="${pageContext.request.contextPath}/main">登录成功</a>
</h3>

</body>
</html>
