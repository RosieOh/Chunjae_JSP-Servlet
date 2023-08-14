package dao;

import java.sql.*;

public class MySQLCon implements DBC {
    final String DRIVER = "org.mysql.jdbc.Driver";
    // URL요소를 분리 해놓은 것
    final String DNS = "localhost";
    final String PORT = "3306";
    final String NAME = "edu";
    final String USER = "root";
    final String PASS = "1234";
    final String URL = "jdbc:mysql://localhost:3306/edu";
    Connection conn = null;

    // 제발 surround try/catch 해주자!!!!
    @Override
    public Connection connect() {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            conn = DriverManager.getConnection(URL, USER, PASS);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return conn;
    }

    // surround try/catch 해주자!!!!
    @Override
    public void close(PreparedStatement pstmt, Connection conn) {
        try {
            pstmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        try {
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            pstmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
