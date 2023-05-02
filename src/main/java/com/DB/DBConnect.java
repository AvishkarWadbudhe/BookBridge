/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DB;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hp
 */
public class DBConnect {
   private static final String DB_URL = "jdbc:mysql://localhost:3306/bookbridge";
              private static final String USER = "root";
              private static final String PASSWORD = "1234"; 
  private static Connection conn;
 
public static Connection getConnection() throws ClassNotFoundException, SQLException
  {
   try{  
             if(conn==null){  
           Class.forName("com.mysql.jdbc.Driver");
           conn=DriverManager.getConnection(DB_URL, USER, PASSWORD);
            }
      
   }catch(Exception e){
       e.printStackTrace();
   }
return conn;
  }
// public static void main(String[] args) throws ClassNotFoundException {
//        // Test the database connection
//        try {
//            conn = getConnection();
//            System.out.println("Connected to the database successfully!");
//            conn.close();
//        } catch (SQLException e) {
//            System.err.println("Failed to connect to the database: " + e.getMessage());
//        }
//    }

 
}
//    public static Connection getConnection() throws SQLException {
//        Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
//        
//        return conn;
//        
//    }
//
//    public static ResultSet executeQuery(String query) throws SQLException {
//        Connection conn = getConnection();
//        Statement stmt = conn.createStatement();
//        ResultSet rs = stmt.executeQuery(query);
//        return rs;
//    }
//
//    public static int executeUpdate(String query) throws SQLException {
//        Connection conn = getConnection();
//        Statement stmt = conn.createStatement();
//        int rowsAffected = stmt.executeUpdate(query);
//        return rowsAffected;
//    }



