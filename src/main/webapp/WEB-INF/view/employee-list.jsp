<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees list</title>
      <style>
         table, th, td {
            border: 1px solid black;
         }
      </style>
</head>
<body>
<input type="button" value="Add Employee" onclick="window.location.href='${pageContext.request.contextPath}/admin/addEmpForm'; return false;">
    <br>
    Employee List
	
    

    <table>
        <tr>
            <th>Employee ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>DOB</th>
            <th>Email</th>
            <th>Department ID</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${employees}" var="employee">
            <c:url var="updateLink" value="/admin/editEmployee">
                <c:param name="employeeId"  value="${employee.employee_id}"/>
            </c:url>
            <c:url var="deleteLink" value="/admin/deleteEmployee">
                <c:param name="employeeId"  value="${employee.employee_id}"/>
            </c:url>
            <tr>
                <td>${employee.employee_id}</td>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.dob}</td>
                <td>${employee.email}</td>
                <td>${employee.department.department_id}</td>
                <td><a href="${updateLink}">Edit</a>|
                    <a href="${deleteLink}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
<a href="${pageContext.request.contextPath}/">Return To Home</a>
</html>
