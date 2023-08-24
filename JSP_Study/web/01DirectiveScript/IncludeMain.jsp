<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<%@ include file="IncludeFile.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>include 지시어</title>
</head>
<body>
    <%
        out.println("오늘 날짜 : " + today);
        out.println("<br />")
    %>
</body>
</html>
