<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>임직원 추가</h3>
<form action="" method="post">
    <div>
        성
        <input type="text" name="lastName">
    </div>
    <div>
        이름
        <input type="text" name="firstName">
    </div>
    <div>
        생일
        <input type="text" name="birthDate">
    </div>
    <div>
        사진
        <input type="text" name="photo">
    </div>
    <div>
        메모
        <input type="text" name="notes">
    </div>
    <div>
        <input type="submit" value="저장">
    </div>
</form>
</body>
</html>
