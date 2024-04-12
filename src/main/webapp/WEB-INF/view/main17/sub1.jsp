<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>name:${requestScope.name}</div>
<div>city:${sessionScope.city}</div>
<hr>
<dic>model:${model}</dic>
<div>model:${requestScope.model}</div>
<div>model:${sessionScope.model}</div>
</body>
</html>
