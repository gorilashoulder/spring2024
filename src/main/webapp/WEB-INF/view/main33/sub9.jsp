<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>my_table9 자료들</h3>
<form action="" method="post">
    <div>
        <input type="text" name="str" value="기본문자열">
    </div>
    <div>
        <input type="number" name="intValue" value="2">
    </div>
    <div>
        <input type="number" name="realValue" value="3.14" step="0.01">
    </div>
    <div>날짜
        <input type="date" name="dateValue" value="2024-02-02">
    </div>
    <div>날짜시간
        <input type="datetime-local" name="dateTimeValue" value="2024-02-01T12:12:12">
    </div>
    <div>
        <input type="submit" value="저장">
    </div>
</form>
<table>
    <thead>
    <tr>
        <th>문자열</th>
        <th>정수</th>
        <th>실수</th>
        <th>날짜</th>
        <th>날짜시간</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.stringCol}</td>
            <td>${data.intCol}</td>
            <td>${data.decCol}</td>
            <td>${data.dateCol}</td>
            <td>${data.dateTimeCol}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
