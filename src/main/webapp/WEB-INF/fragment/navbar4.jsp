<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
    .active {
        background-color: lightseagreen;
    }

    a {
        border: 1px solid black;
    }
</style>
<div>
    <div>param.
        <a class="${param.current eq  'sub6' ? 'active' :''}" href="/main17/sub6">sub6</a>
        <a class="${param.current eq  'sub7' ? 'active' :''}" href="/main17/sub7">sub7</a>
        <a class="${param.current eq  'sub8' ? 'active' :''}" href="/main17/sub8">sub8</a>
    </div>
    <div style="font-size: 40px">
        <c:if test="${not empty sessionScope.userName}" var="logIn">
            ${sessionScope.userName} 환영합니다
        </c:if>
        <c:if test="${not logIn}">
            guest로그인
        </c:if>
    </div>
</div>