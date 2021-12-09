<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Date: 2021/12/8
  Time: 14:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有学生</title>
    <%--BootStrap--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>所有学生信息</small>
                </h1>
            </div>
        </div>

        <div>
            <div class="col-md-4 column">
                <%--toAddStudent--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/stu/toAddStu">添加学生</a>
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
                            <a href="${pageContext.request.contextPath}/stu/toUpdateStu?id=${student.id}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="#">删除</a>
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
