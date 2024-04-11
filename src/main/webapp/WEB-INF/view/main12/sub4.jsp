<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" var="num">
    <p>반복출력${num}</p>
</c:forEach>
<hr>
<c:forEach items="${myList}" var="elem">
    <p>${elem}</p>
</c:forEach>

<hr>
<c:forEach items="${food}" var="foods">
    <p>${foods}</p>
</c:forEach>

<hr>
<c:forEach items="${food}" var="foods" begin="1" end="2">
    <p>${foods}</p>
</c:forEach>

<hr>
<c:forEach items="${myMap}" var="item">
    <p>${item.key}</p>
    :
    <p>${item.value}</p>
</c:forEach>

<hr>
<c:forEach items="${cars}" var="item">
    <p>${item.key}:${item.value}</p>
</c:forEach>

<hr>
<c:forEach items="${myList2}" var="elem">
    <p>${elem}</p>
</c:forEach>

<hr>
<c:forEach items="${myMap2}" var="entry">
    <p>${entry.key}:${entry.value}</p>
</c:forEach>

</body>
</html>
