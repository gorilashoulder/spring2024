<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.type eq 'fail'}">
    <div>아이디와 패스워드를 확인 하세요</div>
</c:if>

<form action="/main22/sub4" method="post">
    <div>
        id
        <input type="text" name="id">
    </div>
    <div>
        pw
        <input type="text" name="password">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>

</body>
</html>