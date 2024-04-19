<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${list}
<div>
    <c:forEach begin="1" end="10" var="pageNumber">
        <a href="">${pageNumber}</a>
    </c:forEach>
</div>
</body>
</html>
