<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout">
</form:form>
  <h2>Welcome<security:authentication property="principal.username"/></h2>
    <security:authorize access="hasRole('ADMIN')">
    <br>
        <p> What do you want to do today?</p>
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/getDepartments">View departments</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/getEmployees">View employees</a> </li>
            <li><a href="${pageContext.request.contextPath}/admin/getRegulations">View regulations</a> </li>
        </ul>
    </security:authorize>

  <security:authorize access="hasRole('EMPLOYEE')">
      <br>
      <p> What do you want to do today?</p>
      <ul>
          <li><a href="${pageContext.request.contextPath}/employee/getRegulations">View regulations</a></li>
      </ul>
  </security:authorize>



</body>
</html>
