<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${customers}" var="customer" varStatus="status">
    ${status.count}
    ${customer.customerName}
    ${customer.city}
    ${customer.country}
</c:forEach>

</body>
</html>
