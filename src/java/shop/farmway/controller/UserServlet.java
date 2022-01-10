package shop.farmway.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//importing package
import shop.farmway.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.List;
import shop.farmway.dao.DatabaseConnection;
import shop.farmway.model.UserModel;

/**
 *
 * @author rshiroya
 */

public class UserServlet extends HttpServlet {

   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doPost method
        
        
        System.out.println("Do Get Post");
        //creating string variables and assigning them value 
        String fname = request.getParameter("firstName"); 
        String lname= request.getParameter("lastName");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        
        //creating a new instance of UserModel model class
        UserModel user1 = new UserModel();
        user1.setFirstName(fname); // calling setFirstName method and passing fname as a parameter
        user1.setLastName(lname); // calling setLastName method and passing lname as a parameter
        user1.setAddress(address); // calling setAddress method and passing address as a parametr
        user1.setEmail(email); // calling setEmail method and passing email as a paramater
        user1.setSex(sex); // calling setSex method and passing sex as a parmater
        user1.setPassword(password); // calling setPasswrod method and passing password as a paramer
        //creating a new instance of UserDao dao class
        UserDao ud = new UserDao();
        String status = ud.userRegister(user1); //calling userRegister method with user1 as a aparmater and assigning its value to string status
        //if ekse statements to forward pages
        if(status.equals("Success")){
            System.out.println("User Registered Succefull");
            request.getRequestDispatcher("/index.jsp").forward(request, response); // redirecting back to index.jsp page
        }else{
            System.out.println("Please Check logs");
        }
        
    }


}
