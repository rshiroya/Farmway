<%-- 
    Document   : messages
    Created on : Jun 27, 2021, 2:34:17 PM
    Author     : rshiroya
--%>

<%@page import="java.util.*"%> 
<%@page import="shop.farmway.model.ContactUs"%> <!-- importing ContactUs model -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css.css"> <!-- linking the css file -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- creating a arraylist to store session variable message -->
<%
    List<ContactUs> list = (List<ContactUs>)session.getAttribute("message");
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Messages</title>
    </head>
    <body  >
        <div>
            <!-- using iterator class in ContactUs model to retrieve values from sql table with the help of an if statement -->
            <%
                Iterator<ContactUs> it = list.iterator();
                ContactUs user = new ContactUs();
                if(it != null){
                    while(it.hasNext()){
                        user = it.next();
                        
                 
            %>
            <table> <!-- creating a table -->
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>email</th>
                        <th>Message</th>
                        
                    </tr>
                </thead>
                <tr>
                    <td><%=user.getName()%></td> <!-- retrieving name from database -->
                    <td><%=user.getEmail()%></td>  <!-- retrieving email from database -->
                    <td><%=user.getMessage()%></td><!--retrieving message from database  -->
                </tr>
            </table> <!-- end table -->
            <%
                   }
                }
            %>
        </div>
        <br><br>
        <a href="<%=request.getContextPath()%>/admin.jsp">Back</a> <!-- creating a clickable text to redirect to admin page -->
    </body>
</html>
