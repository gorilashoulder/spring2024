<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main21/sub1">
    <input type="submit">
</form>
<form action="/main21/sub1">
    <input type="submit">
</form>

<hr>
<form action="/main21/sub3" method="get">
    <input type="submit">
</form>
<form action="/main21/sub3" method="post">
    <input type="submit">
</form>

<hr>

<form action="/main21/sub4">
    <input type="submit" value="">
</form>
<form action="/main21/sub4" method="post">
    <input type="submit" value="">
</form>

<hr>
<form action="/main21/sub5">
    <input type="submit" value="sub">
</form>
<form action="/main21/sub5" method="post">
    <input type="submit" value="post">
</form>
</body>
</html>
