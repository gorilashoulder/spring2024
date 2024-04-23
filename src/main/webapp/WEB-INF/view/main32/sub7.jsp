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
<form action="">
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${not empty customer}">
    <form action="/main32/sub7/update" method="post">
        <div>
            <input type="text" value="${customer.id}" name="id">
        </div>
        <div>
            <input type="text" value="${customer.name}" name="name">
        </div>
        <div>
            <input type="text" value="${customer.contactName}" name="contactName">
        </div>
        <div>
            <input type="text" value="${customer.address}" name="address">
        </div>
        <div>
            <input type="text" value="${customer.city}" name="city">
        </div>
        <div>
            <input type="text" value="${customer.postalCode}" name="postalCode">
        </div>
        <div>
            <input type="text" value="${customer.country}" name="country">
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
