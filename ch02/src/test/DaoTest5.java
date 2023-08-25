package test;

import dao.DBC;
import dao.MariaDBCon;

import java.sql.*;
import java.util.Scanner;

// 정보 수정
// deleteMember()
public class DaoTest5 {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static Statement stmt = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
        DBC con = new MariaDBCon();
        conn = con.connect();
        if(conn != null) {
            System.out.println("DB 연결 성공");
        }
        Scanner sc = new Scanner(System.in);
        System.out.println("강퇴할 아이디를 입력하시오 : ");
        String id = sc.nextLine();
        int cnt = 0;
        try {
            String sql = "delete from member where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            cnt = pstmt.executeUpdate();
            if (cnt>0){
                System.out.println("삭제가 성공적으로 이루어졌습니다.");
            } else {
                System.out.println("삭제 실패~~~에베베벱");
            }

            con.close(pstmt, conn);
        } catch (SQLException e) {
            System.out.println("SQL 구문이 처리되지 못했습니다.");
        }
    }
}
