<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>choose,when,otherwise</h3>
<c:choose>
    <c:when test="false">
        <p>첫번째 when</p>
    </c:when>
    <c:when test="false">
        <p>두번째 when</p>
    </c:when>
    <c:otherwise>
        <p>otherwise when</p>
    </c:otherwise>
</c:choose>

<hr>
<c:choose>
    <c:when test="${age<=10}">
        <p>어린이용콘텐츠</p>
    </c:when>
    <c:when test="${age>10 && age<30}">
        <p>청소년용콘텐츠</p>
    </c:when>
    <c:otherwise>
        <p>어른용콘텐츠</p>
    </c:otherwise>
</c:choose>

</body>
</html>
