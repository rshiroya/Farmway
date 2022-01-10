/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.controller;

//importing package
import javax.servlet.RequestDispatcher;
import shop.farmway.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.sql.PreparedStatement;
import shop.farmway.dao.DatabaseConnection;
import shop.farmway.model.UserModel;

/**
 *
 * @author rshiroya
 */
public class LoginServlet extends HttpServlet {


    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doPost method
        String username = request.getParameter("username");// creating a string username and assigning it to the parameter username
        String password = request.getParameter("password");// creating a string password and assigning it to the parameter password
        //if statement to validate that credentials belongs to admin
        if(username.equals("admin") && password.equals("admin")){
            request.getRequestDispatcher("/admin.jsp").forward(request, response); //redirecting to admin.jsp page
        }
        //creating a new instance of UserModel model class
        UserModel user1 = new UserModel();
        user1.setUsername(username); // calling setUserName method and passing username as parameter
        user1.setPassword(password);// calling setpassword method and passing pasword as parameter
        
        //creating a new instance of UserDao dao class
        UserDao ud = new UserDao();
        //creating a string and assigning value to a userLogin method with user1 as parameter
        String status = ud.userLogin(user1);
        //if else statement to validate wheteher session was successful and the username and password were correct
        PrintWriter out = response.getWriter();
        if(status.equals("Success")){
            System.out.println("Login Succefull");
            HttpSession session = request.getSession(true); //creating a sesion
            session.setAttribute("currentSessionUser",user1); //setting attribute 
            session.setAttribute("username", user1.getUsername());
            request.getRequestDispatcher("/index.jsp").forward(request, response); //redirecting to index.jsp page
            
        }else{
            System.out.println("Username or Password Incorrect"); 
            out.println("<html><head></head><body onload=\"alert('incorrect username or password')\"></body></html>");
            request.getRequestDispatcher("/index.jsp").forward(request, response); //redirecting back to account.jsp page
        }
        
        
    }
   
               
    }

