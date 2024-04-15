<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub12">
    <input type="text" name="type">
    <br>
    <textarea name="content"></textarea>
    <br>
    <select name="city" id="">
        <option value="london">런던</option>
        <option value="seoul">서울</option>
        <option value="chicago">시카고</option>
    </select>
    <br>
    <input type="submit">
</form>

<hr>

<form action="/main20/sub13">
    <div>
        <div>
            <input type="radio" name="city" value="seoul" id="">
            서울
        </div>
        <div>
            <input type="radio" name="city" value="london" id="">
            런던
        </div>
        <div>
            <input type="radio" name="city" value="madrid" id="">
            마드리드
        </div>
        <div>
            <input type="submit">
        </div>
    </div>
</form>

<form action="/main20/sub14">
    <div>
        국밥:
        <input type="checkbox" name="foods" value="국밥" id="">
    </div>
    <div>
        비빔밥:
        <input type="checkbox" name="foods" value="비빔밥" id="">
    </div>
    <div>
        피자:
        <input type="checkbox" name="foods" value="피자" id="">
    </div>
    <div>
        <input type="submit">
    </div>
</form>

<hr>

<form action="/main20/sub15">
    <div>
        <select name="type" id="">
            공격수:
            <option value="forward">공격수</option>
            미드필더:
            <option value="middle">미드필더</option>
        </select>
    </div>
    <div>
        갤럭시
        <input type="radio" name="phone" value="galaxy">
        아이폰
        <input type="radio" name="phone" value="iphone">
    </div>
    <div>
        <input type="checkbox" name="book" value="책">
        <input type="checkbox" name="book" value="아">
        <input type="checkbox" name="book" value="님">
    </div>
    <input type="submit">
</form>
</body>
</html>
