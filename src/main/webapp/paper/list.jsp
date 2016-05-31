<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>paper list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>Paper List</h1>
        <hr/>
        <c:import url="create.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>TIME</th>
                <th>COURSEID</th>
                <th>TEACHERID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="paper" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${paper.id}</td>
                <td>${paper.time}</td>
                <td>${paper.courseId}</td>
                <td>${paper.teacherId}</td>
                <td><a href="${ctx}/paper/search/${paper.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/paper/remove/${paper.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>