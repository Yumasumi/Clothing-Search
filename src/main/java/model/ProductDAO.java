package model;

import java.io.InputStream;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.Properties;

public class ProductDAO {
    private String jdbcURL;
    private String dbUser;
    private String dbPassword;

    public ProductDAO() {
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("db.properties")) {
            Properties prop = new Properties();
            prop.load(input);

            jdbcURL = prop.getProperty("db.url");
            dbUser = prop.getProperty("db.user");
            dbPassword = prop.getProperty("db.password");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Product> searchProducts(String keyword) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE name LIKE ? OR category LIKE ?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (
                    Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                    PreparedStatement stmt = conn.prepareStatement(sql)
            ) {
                String search = "%" + keyword + "%";
                stmt.setString(1, search);
                stmt.setString(2, search);

                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    Product p = new Product();
                    p.setId(rs.getInt("id"));
                    p.setName(rs.getString("name"));
                    p.setCategory(rs.getString("category"));
                    p.setStyle(rs.getString("style"));
                    p.setPrice(rs.getDouble("price"));
                    p.setStock(rs.getInt("stock"));
                    p.setColor(rs.getString("color"));
                    p.setSize(rs.getString("size"));
                    p.setDescription(rs.getString("description"));
                    list.add(p);
                }
                rs.close();
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return list;
    }
}
