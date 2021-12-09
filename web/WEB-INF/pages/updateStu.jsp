<%--
  Date: 2021/12/8
  Time: 17:02
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生</title>
  <%--BootStrap--%>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="page-header">
        <h1>
          <small>添加学生</small>
        </h1>
      </div>
    </div>

  </div>

  <form action="${pageContext.request.contextPath}/stu/addStu" method="post">
    <div class="form-group">
      <label>学生姓名</label>
      <input type="text" name="name" class="form-control" required value="${student.name}">
    </div>
    <div class="form-group">
      <label>账户余额</label>
      <input type="number" name="balance" class="form-control" required value="${student.balance}">
    </div>
    <div class="form-group">
      <label>今日消费</label>
      <input type="number" name="consume" class="form-control" required value="${student.consume}">
    </div>
    <div class="form-group">
      <label>上次充值</label>
      <input type="number" name="charge" class="form-control" required value="${student.charge}">
    </div>
    <div class="form-group">
      <label>银行卡号</label>
      <input type="number" name="bankid" class="form-control" required value="${student.bankid}">
    </div>
    <div class="form-group">
      <label>银行卡密码</label>
      <input type="password" name="bankpwd" class="form-control" required value="${student.bankpwd}">
    </div>
    <div class="form-group" style="display: none">
      <label>id</label>
      <input type="password" name="id" class="form-control" required value="${student.id}">
    </div>
    <div class="form-group">
      <input type="submit" class="form-control" value="修改">
    </div>
  </form>


</div>

</body>
</html>
