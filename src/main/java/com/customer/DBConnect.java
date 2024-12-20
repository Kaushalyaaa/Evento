package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static String url = "jdbc:mysql://localhost:3306/evento";
    private static String userName = "root";
    private static String password = "root";
    private static Connection con;

    private DBConnect() {
    }

    public static Connection getConnection() {
        if (con == null) {
            synchronized (DBConnect.class) {
                if (con == null) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection(url, userName, password);
                    } catch (ClassNotFoundException | SQLException e) {
                        System.out.println("Database connection is not successful!");
                        e.printStackTrace();
                    }
                }
            }
        }
        return con;
    }
}


