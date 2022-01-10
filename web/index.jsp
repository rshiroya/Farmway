<%-- 
    Document   : index
    Created on : Jun 26, 2021, 6:35:27 PM
    Author     : rshiroya
--%>
<!--  -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <title> FarmWay - A Gateway to Fresh Organic Produce</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css.css"><!-- linking css file -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="header"> 
            <div class="container">
                <div class="nav">
                    <div class="logo">
                        <img src="<%=request.getContextPath()%>/images/logo.png" alt="weblogo"><!-- linking logo image -->
                    </div>
                    <nav><!-- nav bar -->
                        <ul> 
                            <li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li><!-- adding a url for index page -->
                            <li><a href="<%=request.getContextPath()%>/products.jsp">Products</a></li><!-- adding a url for products page -->
                            <li><a href="<%=request.getContextPath()%>/contact.jsp">Contact</a></li><!-- adding a url for contact page -->
                            <li><a href="<%=request.getContextPath()%>/aboutus.jsp">About Us</a></li><!-- adding a url for about us page -->
                            
                           <!-- display a link based on if there is a user logged in or not -->
                            
                           <!-- if no user has logged in -->
                            <%
                                String username1 = (String)session.getAttribute("username");
                                if(username1 == null){

                            
                            %>
                           <!-- adding a login page -->
                            <li><a href="<%=request.getContextPath()%>/account.jsp">Log In</a></li>
                            
                           <!-- if any user has logged in -->
                            <% 
                                } 
                                    else{
                            %>
                           <!-- welcoming user and adding a log out page -->
                            <li><a>Welcome Back, <%=session.getAttribute("username")%></a></li>
                            <li><a href ="<%=request.getContextPath()%>/Logout">Log Out</a></li>
                            <% } %>
                            
                        </ul>
                    </nav><!-- end nav -->
                </div>
            </div>

            <div class="row">
                   <!-- displaying main page content -->
                <div class="col-2">
                    <h2>Eat Organic. Stay Healthy.....</h2>
                </div>

                <div class="homepageImg">
                    <img src="<%=request.getContextPath()%>/images/homepageImg.jpg" alt="homepageImg"><!-- adding a homepage image photo -->
                    <div class="centered">
                        <p class="imgtext">Shop from locally grown fresh produce......<br></p>
                        <a href ="<%=request.getContextPath()%>/products.jsp" class="btn">Explore Now</a><!-- add a clickable link which redirects to products page -->
                    </div>
                </div>
            </div>
        </div>
        <footer>
           <!-- footer -->
            <div class="footer">
                <div class="container">
                    <div class="footer-col">
                        <p>FarmWay LLC</p>
                        <p>123 apestrong st.<br>Charlotte, NC<br>United States<br>(704)-888-8888 <br>contact-us@farmway.com</p>
                    </div>
                    <div class="footer-col-2">
                        
                    </div>
                </div>
            </div>
        </footer><!-- end of footer -->
    </body><!-- end body -->
</html<!-- end html  -->
