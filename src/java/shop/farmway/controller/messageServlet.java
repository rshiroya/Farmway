/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.controller;
//calling package
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import shop.farmway.dao.UserDao;
import shop.farmway.model.ContactUs;
import shop.farmway.model.UserModel;

/**
 *
 * @author rshiroya
 */
public class messageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);//forwarding to doPost method
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //doPost method
            //creating a new instance of UserDao dao class
            UserDao db = new UserDao();
            //using list class to store value and call getMessages method from ContactUs model
            List<ContactUs> list = db.getMessages();
            System.out.println(list);
            //if statement to display and redirect
            if(list != null){
                request.getSession(false).setAttribute("message", list); //to get the message
                response.sendRedirect(request.getContextPath()+"/messages.jsp"); // redirect to messages.jsp page
            }
        
    }

   

}
