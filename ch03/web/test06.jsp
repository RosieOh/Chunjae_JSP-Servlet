<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL(Expression Language) - 표현 언어</title>
</head>
<body>
    <%
        // 표현식 사용싱는 데이터 변수로 저장하고, 매개변수로 전달해야함
        String title = "오늘은 비가 오네...";
        String[] dhxogns = {"멋사 대표", "구름-카카오대학 대표", "한이음 프로젝트 팀장", "팀림크드 대표"};
        Map<String, String> tae = new HashMap<>();
        tae.put("name", "고만 해야지...");
        tae.put("age", "26");
        tae.put("nick", "교주");

        // EL 사용시에는 데이터를 넘기는 곳에서 setAttribute를 지정해야함
        request.setAttribute("title", title);
        request.setAttribute("oth", dhxogns);
        request.setAttribute("tae", tae);
    %>
        <h2>표현식(Expression)</h2>
        <p><%= title%></p>
        <div class="cate">
            <% for(String s:dhxogns) { %>
            <p><%=s %></p>
            <% } %>
        </div>
        <p><%=tae %></p>
        <a href="test07.jsp?title=<%=title %>"&oth<%=dhxogns%>&tae="<%= tae%>"></a>
        <hr>
        <h2>표현언어(Expression Language)</h2>
        <p>${tit }</p>
        <c:forEach var="s" items="${ny }">
            <p>${s }</p>
        </c:forEach>
        <p>${k }</p>
        <!-- forward 문장을 기술하고 해당 문서가 화면에 로딩되고, 주소는 바뀌지 않고 전달됨 -->


</body>
</html>