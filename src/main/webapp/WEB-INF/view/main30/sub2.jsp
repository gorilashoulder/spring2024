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
<form action="">
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<form action="/main30/sub2/update" method="post" onsubmit="return confirm('수정?')">
    <div>id
        <input type="text" name="id" value="${employee.id}">
    </div>
    <div>성
        <input type="text" name="lastName" value="${employee.lastName}">
    </div>
    <div>이름
        <input type="text" name="firstName" value="${employee.firstName}">
    </div>
    <div>생일
        <input type="text" name="birthDate" value="${employee.birthDate}">
    </div>
    <div>사진
        <input type="text" name="photo" value="${employee.photo}">
    </div>
    <div>메모
        <input type="text" name="notes" value="${employee.notes}">
    </div>

    <div>
        <input type="submit" value="수정">
    </div>
</form>
</body>
</html>
