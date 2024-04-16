<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${employees}" var="employee" varStatus="status">
    ${status.count}
    ${employee.firstName}
    ${employee.lastName}
</c:forEach>
</body>
</html>
