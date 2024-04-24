<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post" onsubmit="return confirm('진짜저장?')">
    <div>
        <input type="text" value="챔피언" name="title">
    </div>
    <div>
        <input type="text" value="음바페" name="name">
    </div>
    <div>
        <input type="number" value="25" name="age">
    </div>
    <div>
        <input type="number" value="3000" name="price">
    </div>
    <div>
        <input type="date" value="2001-02-01" name="published">
    </div>
    <div>
        <input type="datetime-local" value="2001-01-04T10:10:19" name="inserted">
    </div>
    <div>
        <input type="submit" value="저장">
    </div>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>타이틀</th>
        <th>이름</th>
        <th>나이</th>
        <th>가격</th>
        <th>날짜</th>
        <th>날짜시간</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.title}</td>
            <td>${data.name}</td>
            <td>${data.age}</td>
            <td>${data.price}</td>
            <td>${data.published}</td>
            <td>${data.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
