<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Response 객체</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
    <%
        // page/out < request/response < session(cookie) < application
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
    %>
</head>
<body>
    <h2>페이지 출력</h2>
    <form name="login_form" action="response.jsp" class="frm" method="post">
        <table class="table" id="tb1">
            <tbody>
            <tr>
                <th><label for="id">아이디</label></th>
                <td><input type="text" name="id" id="id" placeholder="아이디 입력" required autofocus></td>
            </tr>
            <tr>
                <th><label for="id">비밀번호</label></th>
                <td><input type="password" name="pw" id="pw" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="로그인" class="btn btn-primary">
                    <input type="reset" value="취소" class="btn btn-primary">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
    <hr>
    <div id="msg">
        <%
            String msg = request.getParameter("msg");
            String id = (String) session.getAttribute("id");         // 세션을 가져오는 함수 getAttribute() - 앞선 setAttribute()를 선언한 후 get으로 받아옴
            // setAttribute는 형변환을 통한 자료형을 명시할 필요가 없지만, getAttribute()에서는 형변환을 통한 자료형 명시
            String pw = (String) session.getAttribute("pw");
        %>
        <div class="container">
            <h2>로그인 정보</h2>
            <%          if(msg!=null) { %>
                <p>메시지 : <%=msg %></p>
            <%        }     %>
            <%        if (id!=null) {   %>
                <p>로그인 아이디 : <%=id %></p>
                <p>로그인 비밀번호 : <%=pw %></p>
            <%        }     %>
        </div>
    </div>
</body>
</html>