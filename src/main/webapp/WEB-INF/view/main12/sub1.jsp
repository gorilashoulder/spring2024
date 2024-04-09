<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>if</h3>

<c:if test="${age >=20}">
    <p>투표가능</p>
</c:if>

<c:if test="${age < 20}">
    <p>투표불가능</p>
</c:if>

<c:if test="${empty products}">
    <p>상품이없습니다</p>
</c:if>
<c:if test="${not empty products}">
    <p>${products[0]},${products[1]}</p>
</c:if>

<c:if test="${5>8 && 9>2}" var="result">
    <p>출력1</p>
</c:if>
<c:if test="${not result}">
    <p>출력2</p>
</c:if>

<hr>
<c:if test='${member.age>=20 && member.country=="korea"}' var="votable">
    <p>투표가능</p>
</c:if>

<c:if test="${not votable}">
    <p>투표불가능</p>
</c:if>


</body>
</html>
