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
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>欢迎您，您的ID为${pageContext.request.session.getAttribute("id")}</small>
                    <small>&nbsp;&nbsp;您的信息如下：</small>
                </h1>
            </div>
        </div>

        <div>
            <div class="col-md-4 column">
                <%--toAddStudent--%>
                <a class="btn btn-danger" href="${pageContext.request.contextPath}/goOut">注销登录</a>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>学生id</th>
                    <th>学生姓名</th>
                    <th>账户余额</th>
                    <th>今日消费</th>
                    <th>上次充值</th>
                    <th>银行卡号</th>
                    <th>操作</th>
                </tr>
                </thead>
                <%--书籍从数据库中查询出来->从list中遍历--%>
                <tbody>
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.balance}</td>
                        <td>${student.consume}</td>
                        <td>${student.charge}</td>
                        <td>${student.bankid}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/toUpdateStudent?id=${student.id}" class="btn btn-info">修改</a>
                            &nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/toCharge?id=${student.id}" class="btn btn-info" >充值</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
