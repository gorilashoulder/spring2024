<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div> ${message}</div>
</c:if>
<h3>임원 조회</h3>
<form action="">
    <input type="number" name="id">
    <button> 조회</button>
</form>
<c:if test="${empty employee}">
    임원 조회 없음
</c:if>
<c:if test="${not empty employee}">

    <div> ID
        <input type="number" readonly value="${employee.id}">
    </div>
    <div>성
        <input type="text" readonly value="${employee.lastName}">
    </div>
    <div>이름
        <input type="text" readonly value="${employee.firstName}">
    </div>
    <div>생일
        <input type="date" readonly value="${employee.birthDate}">
    </div>
    <div>사진
        <input type="text" readonly value="${employee.photo}">
    </div>
    <div>메모
        <input type="text" readonly value="${employee.notes}">
    </div>

    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('삭제할꺼?')">
        <div>
            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            <button>삭제</button>
        </div>
    </form>
</c:if>
</body>
</html>
