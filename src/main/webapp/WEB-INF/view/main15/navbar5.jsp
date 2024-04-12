<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="attr1" value="page value2" scope="page"></c:set>
<div>
    <div>
        <%--        page value2--%>
        nav5 page영역 :${pageScope.attr1}
    </div>
    <div>
        <%--        request value1--%>
        nav5 request영역: ${requestScope.attr1}
    </div>
</div>