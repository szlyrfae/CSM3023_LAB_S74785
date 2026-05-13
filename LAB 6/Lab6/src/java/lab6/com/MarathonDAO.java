package lab6.com;

import java.sql.*;

public class MarathonDAO {
    private Database db = new Database();

    public int insertMarathon(Marathon m) {
        int result = 0;
        Connection conn = db.getConnection();
        try {
            String sql = "INSERT INTO marathon (runnerName, runnerIC, category, tShirtSize) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, m.getRunnerName());
            ps.setString(2, m.getRunnerIC());
            ps.setString(3, m.getCategory());
            ps.setString(4, m.getTShirtSize());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeConnection();
        }
        return result;
    }
}