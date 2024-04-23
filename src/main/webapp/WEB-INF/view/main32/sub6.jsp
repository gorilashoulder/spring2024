<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    ${message}
</c:if>
<h3>직원조회 수정</h3>
<form>
    직원번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">
    조회된 직원 없음
</c:if>
<c:if test="${not empty employee}">
    <form action="/main32/sub6/update" method="post">
        <div>
            <input type="text" value="${employee.lastName}" name="lastName">
        </div>
        <div>
            <input type="text" value="${employee.firstName}" name="firstName">
        </div>
        <div>
            <input type="date" value="${employee.birthDate}" name="birthDate">
        </div>
        <div>
            <input type="text" value="${employee.photo}" name="photo">
        </div>
        <div>
            <input type="text" value="${employee.notes}" name="notes">
        </div>
        <div style="display: none">
            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            <input type="submit" value="전송">
        </div>
    </form>
</c:if>
</body>
</html>
