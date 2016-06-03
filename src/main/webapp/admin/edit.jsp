<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/3
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit</title>
</head>
<body>
姓名：<input type="text" name="username" placeholder="username">
起始月份：<input type="date" name="startDate" placeholder="START DATE">
截至月份：<input type="date" name="endDate" placeholder="END DATE">
<input type="button" name="search" placeholder="查询">
<a href="admin/create">新加记录</a><br>
<table border="1">
    <tr>
        <th>序号</th>
        <th>姓名</th>
        <th>月份</th>
        <th>养老保险</th>
        <th>医疗保险</th>
        <th>工伤保险</th>
        <th>失业保险</th>
        <th>住房公积金</th>
        <th>合计</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="staff" items="${sessionScope.staffs}" varStatus="vs">
        <tr>
            <td title="${vs.count}">${vs.count}</td>
            <td title="${staff.username}">${staff.username}</td>
            <td title="${insuranceMoney.month}">${insuranceMoney.month}</td>
            <td title="${insuranceMoney.yanglInsurance}">${insuranceMoney.yanglInsurance}</td>
            <td title="${insuranceMoney.yilInsurance}">${insuranceMoney.yilInsurance}</td>
            <td title="${insuranceMoney.gongsInsurance}">${insuranceMoney.gongsInsurance}</td>
            <td title="${insuranceMoney.shiyInsurance}">${insuranceMoney.shiyInsurance}</td>
            <td title="${insuranceMoney.housing_fund}">${insuranceMoney.housing_fund}</td>
            <td><a href="">编辑</a></td>
            <td><a href="">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
