<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Date: 2021/12/8
  Time: 14:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有学生</title>
    <link rel="icon" href="https://s3.bmp.ovh/imgs/2021/12/b79016db8c4c54f2.png" type="image/x-icon">
    <link rel="shortcut icon" href="https://s3.bmp.ovh/imgs/2021/12/b79016db8c4c54f2.png" type="image/x-icon">
    <%--BootStrap--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>欢迎您，${pageContext.request.session.getAttribute("id")}</small>
                    <small>&nbsp;&nbsp;所有学生信息</small>
                </h1>
            </div>
        </div>

        <div>
            <div class="col-md-4 column">
                <%--toAddStudent--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/adm/toAddStu">添加学生</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/adm/allStu">查看全部学生</a>
                <a class="btn btn-danger" href="${pageContext.request.contextPath}/goOut">注销登录</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <%--查询学生--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/adm/queryStu" method="post" style="float: right">
                        <span style="color: red;font-weight: bold">${error}</span>
                        <input type="text" name="queryName" class="form-control" placeholder="请输入要查询的学生姓名">
                        <input type="submit" value="查询" class="btn btn-primary">
                </form>
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
                <c:forEach var="student" items="${studentList}">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.balance}</td>
                        <td>${student.consume}</td>
                        <td>${student.charge}</td>
                        <td>${student.bankid}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/adm/toUpdateStu?id=${student.id}" class="btn btn-info">修改</a>
                            &nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/adm/deleteStu/${student.id}" class="btn btn-danger" >删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>


</body>
</html>
