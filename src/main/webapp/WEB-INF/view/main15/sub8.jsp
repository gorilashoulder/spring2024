<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="attr1" value="page value1" scope="page"></c:set>
<c:set var="attr1" value="request value1" scope="request"></c:set>
<c:import url="navbar5.jsp"></c:import>
<hr>
<div>
    <div>
        <%--        page value1 --%>
        sub5 page영역:${pageScope.attr1}
    </div>
    <div>
        <%--        request value1--%>
        sub5 request영역:${requestScope.attr1}
    </div>
</div>
</body>
</html>
