<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="">
    <input type="text" name="search" placeholder="이름입력">
    <button>제출</button>
</form>
<hr>
<c:forEach items="${EmployeesList}" var="Employees">
    <div style="font-size: 50px">
            ${Employees.firstName}
            ${Employees.lastName}

    </div>

</c:forEach>
</body>
</html>
