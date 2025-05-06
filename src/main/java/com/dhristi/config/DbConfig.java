package com.dhristi.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.io.InputStream;
import java.io.IOException;

/**
 * Utility class for initializing and providing database connections.
 * Reads connection parameters from config.properties on the classpath.
 */
public class DbConfig {
    private static String URL;
    private static String USER;
    private static String PASS;

    static {
        try (InputStream in = DbConfig.class.getClassLoader()
                                       .getResourceAsStream("config.properties")) {
            Properties props = new Properties();
            props.load(in);
            URL  = props.getProperty("db.url");
            USER = props.getProperty("db.user");
            PASS = props.getProperty("db.password");
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (IOException | ClassNotFoundException e) {
            throw new ExceptionInInitializerError(
                "Failed to load DB configuration: " + e.getMessage());
        }
    }

    /**
     * Returns a new Connection to the database.
     * @return open SQL Connection
     * @throws SQLException if a database access error occurs
     */
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
