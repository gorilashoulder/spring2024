<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar4.jsp">
    <c:param name="current" value="sub6"></c:param>
</c:import>
<div>
    <form action="">
        <div>
            아이디
            <input type="text" name="id">
        </div>
        <div>
            <button>LOGIN</button>
        </div>
    </form>
</div>
</body>
</html>
