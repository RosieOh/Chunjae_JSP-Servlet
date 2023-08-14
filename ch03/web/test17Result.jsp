<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <jsp:useBean id="mem" scope="request" class="ch03.Member" />
    <jsp:setProperty name="mem" property="*" />
    <jsp:setProperty name="mem" property="no" value="<%=mem.getNo()%>" />
    <jsp:setProperty name="mem" property="id" value="<%=mem.getId()%>" />
    <jsp:setProperty name="mem" property="pw" value="<%=mem.getPw()%>" />
    <jsp:setProperty name="mem" property="name" value="<%=mem.getName()%>" />
    <jsp:setProperty name="mem" property="point" value="<%=mem.getPoint()%>" />
</head>
<body>
    <div class="container">
        <h2>getProperty를 활용한 데이터 바인딩</h2>
    <div>
    <ul class="list">
        <li>번호 : <jsp:getProperty name="mem" property="no"/></li>
        <li>아이디 : <jsp:getProperty name="mem" property="id"/></li>
        <li>비밀번호 : <jsp:getProperty name="mem" property="pw"/></li>
        <li>이름 : <jsp:getProperty name="mem" property="name"/></li>
        <li>점수 : <jsp:getProperty name="mem" property="point"/></li>
    </ul>
    </div>
</div>
</body>
</html>