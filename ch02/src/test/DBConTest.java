package test;


import java.sql.*;

public class DBConTest {
    public static void main(String[] args) throws SQLException {
        final String DRIVER = "org.mariadb.jdbc.Driver";
        // URL요소를 분리 해놓은 것
        final String DNS = "localhost";
        final String PORT = "3306";
        final String NAME = "edu";
        final String USER = "root";
        final String PASS = "1234";
        // final String URL = "프로토콜:DB 종류://호스트주소:포트번호/데이터베이스이름";
        final String URL = "jdbc:mariadb://localhost:3306/edu";
        //final String URL = "jdbc:mariadb://" + DNS + ":" + PORT + "/" + NAME;

        Connection conn = null; // 연결자
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PASS);
            if(conn != null) {
                System.out.println("DB 연결 성공");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("DB 접속 실패");
        }

        try {
            pstmt = conn.prepareStatement("select * from member where id='admin'");// sql 구문 대입
            rs = pstmt.executeQuery();  // SQL 실행하여 결과셋 저장
            while (rs.next()) {
                System.out.println("아이디 : " + rs.getString("id"));
                System.out.println("비밀번호 : " + rs.getString("pw"));
                System.out.println("이름 : " + rs.getString("name"));
                System.out.println("가입일 : " + rs.getString("regdate"));
                System.out.println("이름 : " + rs.getString("point"));
            }
        } catch(SQLException e){
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }
}

