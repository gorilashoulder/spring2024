<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--텍스트 인풋--%>
<input type="text">
<div>
    <input type="number">
</div>
<div>
    <input type="date">
</div>
<%--날짜시간--%>
<div>
    <input type="datetime-local">
</div>
<%--파일입력--%>
<div>
    <input type="file">
</div>
<%--암호입력--%>
<div>
    <input type="password">
</div>

<div>
    <div>
        <input type="radio" name="food">
        바나나
    </div>
    <div>
        <input type="radio" name="food">
        딸기
    </div>
    <div>
        <input type="radio" name="food">
        멜론
    </div>
</div>
<%--체크 박스--%>
<div>
    <div>
        <input type="checkbox" name="food">
        Lorem.
    </div>
    <div>
        <input type="checkbox" name="food">
        Reiciendis!
    </div>
    <div>
        <input type="checkbox" name="food">
        Laborum.
    </div>
</div>

</body>
</html>
