<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>상품 목록</h3>
<%--action의 값이 없거나 생략되면 현재 요청 경로로 --%>
<form action="">
    이름
    <input value="${prevSearch}" type="text" placeholder="조회할 상품 이름을 입력하세요." name="search">
    <button>조회</button>
    <%--   form내의 button은 submit 버튼 역할 --%>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>