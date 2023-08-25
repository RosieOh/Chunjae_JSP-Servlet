<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path9 = request.getContextPath();
=======
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isErrorPage="true" %>      <!-- JSP 문서는 반드시 이 코드가 있어야 함 -->
<%
    String path9 = (String) request.getContextPath();
>>>>>>> 2112f2d8d5a87bed2b08983363e525ce22dfd97e
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <title>Error</title>
</head>
<body>
<div class="container">
    <h2>요청하신 주소의 페이지를 찾을 수 없습니다.</h2>
    <figure class="vs">
        <img src="<%=path9 %>/img/404_indiepixel-1024x768.jpg" alt="404에러">
    </figure>
</div>
</body>
</html>
=======
    <title> 404 ERROR </title>
</head>
<body>
    <div class="container">
        <h2> 요청하신 주소의 페이지를 찾을 수 없습니다. </h2>
        <figure class="vs">
            <img src="<%=path9 %>/img/404error.jpg" alt="404 에러 이미지">
        </figure>
    </div>
</body>
</html>
>>>>>>> 2112f2d8d5a87bed2b08983363e525ce22dfd97e
