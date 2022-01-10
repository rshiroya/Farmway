<%-- 
    Document   : aboutus
    Created on : Jun 26, 2021, 6:36:47 PM
    Author     : rshiroya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>About Us</title>
        <link rel="stylesheet" href="css.css"> <!-- linking css file -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="header"> <!-- header  -->
            <div class="container">
                <div class="nav">
                    <div class="logo">
                        <img src="images/logo.png" alt="weblogo"> <!-- adding a logo picture -->
                    </div>
                    <nav> <!-- nav bar -->
                        <ul> 
                            <li><a href="index.jsp">Home</a></li> <!-- adding a link to index page -->
                            <li><a href="products.jsp">Products</a></li><!-- adding a link to products page -->
                            <li><a href="contact.jsp">Contact</a></li> <!-- adding a link to contact page -->
                            <li><a href="aboutus.jsp">About Us</a></li><!-- adding a link to about us page -->
                           <!-- if else sstatements based on whether a user is logged in or not -->
                            
                            
                            <%
                                String username1 = (String)session.getAttribute("username");
                                if(username1 == null){

                            
                            %>
                           <!-- if user has not logged in adding a link to login page  -->
                            <li><a href="<%=request.getContextPath()%>/account.jsp">Log In</a></li>
                            
                           <!-- if user has logged in, displaying welcome user and adding a log out page -->
                            <% 
                                } 
                                    else{
                            %>
                            <li><a>Welcome Back, <%=session.getAttribute("username")%></a></li>
                            <li><a href ="<%=request.getContextPath()%>/Logout">Log Out</a></li>
                            <% } %>
                        </ul>
                    </nav><!-- nav bar end -->
                </div>
            </div>
           <!-- adding main content of the page -->
            <div class="about">
                <br><p class="quote"> <em>Let food be thy medicine and medicine be thy food</em><br> - Hippocrates</p><br>
                <h1 class="info">About the store</h1><br>
                <p class="about-text">
                    - Organic foods often have more beneficial nutrients, such as antioxidants, 
                    than their conventionally-grown counterparts and people with allergies to foods, 
                    chemicals, or preservatives may find their symptoms lessen or go away when they eat only organic foods.<br><br>
                    - Chemicals such as synthetic fungicides, herbicides, and insecticides are widely used in conventional agriculture 
                    and residues remain on (and in) the food we eat.<br><br>
                    - Organic farming practices may reduce pollution, conserve water, reduce soil erosion, increase soil fertility, 
                    and use less energy. Farming without synthetic pesticides is also better for nearby birds and animals as well as 
                    people who live close to farms.<br><br>
                    We have taken a vow to deliver 100% organic produce to the people of Charlotte at a reasonable price.
                </p>
                <br><br>
                
            </div>
           <!-- footer -->
        <footer>
            <div class="footer">
                <div class="container">
                    <div class="footer-col">
                        <p>FarmWay LLC</p>
                        <p>123 apestrong st.<br>Charlotte, NC<br>United States<br>(704)-888-8888<br>contact-us@farmway.com</p>
                    </div>
                </div>
                    
            </div>
            </div>
        </footer><!-- end footer -->
    </body><!-- body end -->
</html><!-- html end  -->

