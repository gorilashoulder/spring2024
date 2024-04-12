<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--el 의 내장객체 param : request parameter 를 key, value쌍으로 저장한 맵--%>
<div>name:${param.name}</div>
<div>age:${param.age}</div>
<div>city:${param.city}</div>
<div>address:${param.address}</div>
<div>model:${param.model}</div>

<hr>
<div>title:${param.title}</div>
<div>content:${param.content}</div>
<div>car:${param.car}</div>
<hr>
<div>q:${param.q}</div>
<div>song:${param.song}</div>
<div>company:${param.company}</div>
</body>
</html>
