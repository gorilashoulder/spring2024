<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Expression Language</p>
<p>간단한 연산 사용 가능</p>
<p>산술연산 ,논리연산 ,비교연산, 삼항연산</p>

<h3>산술연산 +,-,*,/,%</h3>
<p>${5+3}</p>
<p>${7-3}</p>
<p>${2*10}</p
>
<p>${6/2}</p>
<p>${7/2}</p>
<p>${7 div 2}</p>

<p>${7 % 2}</p>
<p>${15 % 4}</p>
<p>${15 mod 4}</p>

<%--문자열 사용가능--%>
<p>${"3"+"4"}</p>


<p>${num1},${num2},${num1+num2}</p>

<h3>비교연산 >, <, >=, <=,=</h3>
<p>${5>3}</p>
<p>${5 gt 3}</p>

<p>${5<3}</p>
<p>${5 lt 3}</p>

<p>${5 >= 3}</p>
<p>${5 ge 3}</p>

<p>${5 == 3}</p>
<p>${5 eq 3}</p>

<p>${"hello"<"spring"}</p>
<p>${"Hello"<"hello"}</p>
<p>${"11"<"2"}</p>
<p>${11<2}</p>
<p>${"11"<2}</p>
<p>${11<"2"}</p>

<h3>논리연산 &&, ||</h3>
<h4>&& and</h4>
<p>${true&&true}</p>
<p>${true&&false}</p>
<p>${false&&true}</p>
<p>${false&&false}</p>

<h5>|| or</h5>
<p>${true||true}</p>
<p>${true||false}</p>
<p>${false||true}</p>
<p>${false||false}</p>

<h3>삼항연산자</h3>
<p>${true? "hello":"world"}</p>
<p>${false? "hello":"world"}</p>
<p>${age1 ge 20 ? "투표가능":"투표불가능"}</p>
<p>${age2 ge 20 ? "투표가능":"투표불가능"}</p>

<p>${quantity*price}</p>

</body>
</html>
