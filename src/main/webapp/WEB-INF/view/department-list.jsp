<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Departments List</title>
      <style>
         table, th, td {
            border: 1px solid black;
         }
      </style>
</head>
<body>
    Departments List
	<br>
    <input type="button" value="Add Department" onclick="window.location.href='${pageContext.request.contextPath}/admin/addDeptForm'; return false;">

    <table>
        <tr>
            <th>Department ID</th>
            <th>Department Name</th>
        </tr>
        <c:forEach items="${departments}" var="department">

        <tr>
            <td>${department.department_id}</td>
            <td>${department.department_name}</td>
        </tr>
        </c:forEach>
    </table>
<br>
    <a href="${pageContext.request.contextPath}/">Home</a>
</body>
</html>
