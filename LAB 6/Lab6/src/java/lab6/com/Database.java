package lab6.com;

import java.sql.*;

public class Database {
    private static final String URL = "jdbc:mysql://localhost:3307/CSA3203";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private Connection conn;

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public void closeConnection() {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}