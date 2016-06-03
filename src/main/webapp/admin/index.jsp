<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/3
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>admin</title>
</head>
<body>
<c:if test="${sessionScope.admin eq null}">
    <c:redirect url="/admin/index.jsp"/>
</c:if>
<h1>管理员登录</h1>
<form action="">
    用户名：<input type="text" name="username" placeholder="username" value="admin"><br>
    密码：<input type="password" name="password" placeholder="password" value="123"><br>
    <input type="submit" value="管理员登录">
</form>
</body>
</html>
