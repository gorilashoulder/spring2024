<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main25/sub1">
    <input type="text" name="name" placeholder="조회할 이름">
    <input type="submit" value="조회">
</form>
<c:forEach items="${employees}" var="employee">
    ${employee.id}
    ${employee.firstName}
    ${employee.lastName}
    ${employee.photo}
    ${employee.notes}
</c:forEach>
</body>
</html>
