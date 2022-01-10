/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.controller;
//importing package
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rshiroya
 */
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp); //redirect to doPost method
    }

   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doPost method
        //creating a session
        HttpSession session = request.getSession();
        //if statement to log out
        if(session != null){
            session.invalidate(); //invalidate the session
            request.setAttribute("logout", "You have logged out succesfully");
            
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); //redirecting to index.jsp page
            rd.forward(request, response);
        }
    }

 

}
