<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--value= 기본값--%>
<input type="text" value="jordan">
<div>
    <%-- readonly:변경불가--%>
    <input type="text" , value="messi" readonly>
</div>
<div>
    <%-- size: 표시되는 인풋의 길이 --%>
    <input type="text" size="5">
</div>
<%--maxlength: 입력값의 길이 제한--%>
<div>
    <input type="text" maxlength="5">
</div>
<%--최대최소--%>
<div>
    <input type="number" min="10" max="20">
</div>
<%--multiple: 여러개 선택 가능--%>
<div>
    <input type="file" multiple>
</div>
<%--placeholder 입력값 힌트 주기--%>
<div>
    <input type="text" placeholder="입력값 힌트 주기">
</div>
</body>
</html>
