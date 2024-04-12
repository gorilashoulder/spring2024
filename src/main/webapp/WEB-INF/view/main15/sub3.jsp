<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="current1" value="sub3 value1" scope="page"></c:set>
<%--view 간 값 전달시 request영역 attribute를 활용하면 됨--%>
<c:set var="current2" value="sub3" scope="request"></c:set>
<c:import url="navbar2.jsp"></c:import>
<div>
    ${current1},${current2}
    sub3의 내용$$$$$$$$$$$
</div>
</body>
</html>
