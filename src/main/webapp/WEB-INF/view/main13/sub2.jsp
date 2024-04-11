<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--url :주소 생성하고 저장할수 있는 태그--%>
<%--여러곳에서 반복해서 쓰는주소 --%>
<%-- request parameter 추가--%>
<%-- request parameter 의 url encoding 추가--%>
<c:url value="https://search.naver.com/search.naver" var="naverUrl">
    <c:param name="query" value="뉴진스"></c:param>
    <c:param name="where" value="nexearch"></c:param>
    <c:param name="sm" value="tab_hty.top"></c:param>
</c:url>

<a href="https://search.naver.com/search.naver?query=뉴진스&where=nexearch&sm=tab_hty.top">네이버</a>
<hr>
<a href="${naverUrl}">네이버</a>

<hr>
<c:url value="https://search.daum.net/search" var="daumUrl">
    <c:param name="w" value="tot"></c:param>
    <c:param name="DA" value="YZR"></c:param>
    <c:param name="t__nil_searchbox" value="btn"></c:param>
    <c:param name="q" value="에스파"></c:param>
</c:url>
<a href="${daumUrl}">에스파검색</a>
</body>
</html>
