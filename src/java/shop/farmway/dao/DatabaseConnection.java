/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.dao;
//importing package
import java.sql.*;
import java.util.ArrayList;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;
/**
 *
 * @author rshiroya
 */
public class DatabaseConnection {
    
    public static Connection connection() throws SQLException, ClassNotFoundException {
        //creating a class to make sure the project is connected with the database
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String username = "user";
        String password = "123";
        String dbName = "farmway";
        
        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(url + dbName, username, password); //connect with the database
        
        return con;
        
        
    }
}
