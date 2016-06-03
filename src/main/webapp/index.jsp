<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
<html>
<head>
    <title>保险金与公积金查询网站</title>
</head>
<body>
<h1>首页</h1>
<form action="${ctx}/staff/login" method="post">
    <input type="text" name="email" placeholder="EMAIL" value="staff1"><br>
    <input type="password" name="password" placeholder="PASSWORD" value="123"><br>
    <input type="submit" value="普通用户登录">
</form>
${requestScope.message}
<hr>${ctx}
<a href="${ctx}/admin/index.jsp">管理员登录</a><br>
</body>
</html>
