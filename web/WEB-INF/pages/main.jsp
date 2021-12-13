<%--
  Date: 2021/12/10
  Time: 10:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
    <%--BootStrap--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>登录成功</h1>
<p>你的ID是${pageContext.session.getAttribute("id")}</p>
<a class="btn btn-danger" href="${pageContext.request.contextPath}/goOut">注销</a>
</body>
</html>
