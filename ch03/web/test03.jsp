<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <%
        pageContext.setAttribute("name", "오태훈");
        pageContext.setAttribute("age", "26");
    %>
</head>
<body>
    <h2 class="title">include directive</h2>
    <div class="container">
        <%@ include file="includeFile.jsp"%>
    </div>
    <hr>
    <h2 class="title">include action tag</h2>
    <div class="container">
        <!-- 액션 태그의 include느 데이터 바인딩이 되지 않고, include가 됨 -->
        <jsp:include page="includeFile.jsp"></jsp:include>
    </div>
</body>
</html>