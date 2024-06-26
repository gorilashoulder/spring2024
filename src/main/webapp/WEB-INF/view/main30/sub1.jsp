<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    ${message}
</c:if>
<h3>고객 정보 수정</h3>
<form action="">
    번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<form action="/main30/sub1/update" method="post">
    <div>
        <input type="text" name="id" value="${customer.id}">
    </div>
    <div>
        <input type="text" name="contactName" value="${customer.contactName}">
    </div>
    <div>
        <input type="text" name="address" value="${customer.address}">
    </div>
    <div>
        <input type="text" name="city" value="${customer.city}">
    </div>
    <div>
        <input type="text" name="postalCode" value="${customer.postalCode}">
    </div>
    <div>
        <input type="text" name="country" value="${customer.country}">
    </div>
    <div>
        <input type="text" name="name" value="${customer.name}">
    </div>
    <div>
        <input type="submit" value="수정">
    </div>
</form>
</body>
</html>
