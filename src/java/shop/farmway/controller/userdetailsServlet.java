/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.farmway.controller;
//import package
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import shop.farmway.dao.UserDao;
import shop.farmway.model.UserModel;

/**
 *
 * @author rshiroya
 */
public class userdetailsServlet extends HttpServlet {

     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp); //redirect to doPost method
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doPost method
        //creating string variable and assigning them value 
        String action = request.getParameter("action");
        //if statement to display the userdetails  and redirect to userdetails page
        if(action.equals("viewuser")){
            UserDao db = new UserDao(); //creating a new instance of UserDao dao class
            List<UserModel> list = db.getUsers();  //using list class to store value and call getMessages method from ContactUs model
            System.out.println(list);
            //if list is not null
            if(list != null){
                request.getSession(false).setAttribute("user", list); //to get the userdetail
                response.sendRedirect(request.getContextPath()+"/userdetails.jsp"); // redirect to the userdetails.jsp page
            }
        }
        
    }


}
