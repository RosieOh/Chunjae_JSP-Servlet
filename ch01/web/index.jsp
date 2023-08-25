<%-- 1. 디렉티브(Directive) --%>
<%-- <%@ %> 로 감싼다. --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%-- 2. 선언문(Declare) : 익명의 클래스를 선언하며, 현재 문서에서만 유효 --%>
<%-- <%!   %>로 감싼다. --%>
<%!
  private String name;
  public String getName() {
    return this.name;
  }
  public void setName(String name) {
    this.name = name;
  }
%>
<html>
  <head>
    <title>메인</title>
  </head>
  <body>
  <h2>천재교육</h2>
  <%
    setName("오태훈");
    String addr = "대학동";
  %>
  <hr>
  <%--표현식(Expression) : 값을 가져와 출력 --%>
  <%--<%= %>로 감싼다. --%>
  <p>이름 : <%=getName() %></p>
  <p>주소 : <%=addr %></p>
  <a href="test01.jsp">테스트1</a>
  <a href="test02.jsp">로그인 폼 테스트</a>
  <a href="test03.jsp">복수 개의 값 전송</a>
  <a href="test04.jsp?msg=한시간남았네">요청 정보 및 헤더 정보</a>
  <a href="test05.jsp">로그인 폼 - response</a>
  </body>
</html>
