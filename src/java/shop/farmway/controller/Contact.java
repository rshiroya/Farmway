/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.controller;
//importing packages
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import shop.farmway.dao.UserDao;
import shop.farmway.model.ContactUs;

/**
 *
 * @author rshiroya
 */

public class Contact extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
    }

    
    
    @Override //doPost method
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String name = request.getParameter("name"); // creating a string name and assigning it to the parameter name
        String email = request.getParameter("email"); // creating a string email and assigning it to the parameter email
        String message = request.getParameter("message"); // creating a string message and assigning it to the parameter message
        
        //creating a new instance of ContactUs model class
        ContactUs user = new ContactUs();
        user.setName(name);  //calling setname method with name as a paramter
        user.setEmail(email); // calling setEmail method with email as a paramter
        user.setMessage(message); // calling setMessage method with message as a paramter
        user.setcID(Integer.valueOf(0)); 
        //creating a new instance of UserDao dao class
        UserDao ud = new UserDao();
        ud.addContactUs(user);  //calling addContactUs method and passing in user as parameter
        
        request.getRequestDispatcher("/index.jsp").forward(request, response); //redirecting to index.jsp page
    }
    
  

}
