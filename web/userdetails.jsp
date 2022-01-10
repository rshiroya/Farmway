<%-- 
    Document   : userdetails
    Created on : Jun 27, 2021, 2:33:47 PM
    Author     : rshiroya
--%>
<%@page import="java.util.*"%>
<%@page import="shop.farmway.model.UserModel"%> <!-- importing UserModel model -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- creating a arraylist to store session variable user -->
<%
    List<UserModel> list = (List<UserModel>)session.getAttribute("user");
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details</title>
    </head>
    <body>
        <div>
            <!-- using iterator class in UserModel model to retrieve values from sql table with the help of an if statement -->
            <%
                Iterator<UserModel> it = list.iterator();
                UserModel user = new UserModel();
                if(it != null){
                    while(it.hasNext()){
                        user = it.next();
                        
                 
            %>
            <table> <!-- creating a table -->
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>sex</th>
                        <th>email</th>
                        <th>address</th>
                        <th>username</th>
                        
                    </tr>
                </thead>
                <tr>
                    <td><%=user.getFirstName()%></td> <!-- retrieving firstname from database -->
                    <td><%=user.getLastName()%></td><!-- retrieving lastname from database -->
                    <td><%=user.getSex()%></td><!-- retrieving sex from database -->
                    <td><%=user.getEmail()%></td><!-- retrieving email from database -->
                    <td><%=user.getAddress()%></td><!-- retrieving address from database -->
                    <td><%=user.getUsername()%></td><!-- retrieving username from database -->
                </tr>
            </table>
            <%
                   }
                }
            %> 
            <br><br><br><a href="<%=request.getContextPath()%>/admin.jsp">Back</a> <!-- adding a clickable link to redirect back to admin page -->
        </div>
    </body>
</html>
