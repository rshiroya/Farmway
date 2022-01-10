<%-- 
    Document   : contact
    Created on : Jun 26, 2021, 6:36:26 PM
    Author     : rshiroya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Contact Us</title>
        <link rel="stylesheet" href="css.css"><!-- linking css file  -->
        <script src="<%=request.getContextPath()%>/javascript.js"></script> <!-- linking javascript file -->
         <script src="<%=request.getContextPath()%>/jquery.js"></script><!-- linking jquery file -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="nav">
                    <div class="logo">
                        <img src="images/logo.png" alt="weblogo"<!-- adding logo photo -->
                    </div>
                    <nav><!-- nav bar -->
                        <ul> 
                            <li><a href="index.jsp">Home</a></li> <!-- adding a link to home page -->
                            <li><a href="products.jsp">Products</a></li><!-- adding a link to products page  -->
                            <li><a href="contact.jsp">Contact</a></li><!-- adding a link to contact page  -->
                            <li><a href="aboutus.jsp">About Us</a></li<!-- adding a link to about us page  -->
                            
                           <!-- if else statements based on whether the user has logged in or not -->
                            <%
                                String username1 = (String)session.getAttribute("username");
                                if(username1 == null){

                            
                            %>
                           <!-- if the user has not logged in, adding link to login page  -->
                            <li><a href="<%=request.getContextPath()%>/account.jsp">Log In</a></li>
                            
                            
                            <% 
                                } 
                                    else{
                            %>
                           <!-- if the user has logged in, welcoming user and adding a link to logout page   -->
                            <li><a>Welcome Back, <%=session.getAttribute("username")%></a></li>
                            <li><a href ="<%=request.getContextPath()%>/Logout">Log Out</a></li>
                            <% } %>
                        </ul>
                    </nav><!-- end nav bar -->
                </div>
            </div>
            
            <div>
                
            </div>
            <div class="contact-form">
                <!-- main content -->
                    <div class="info">
                    <h1>Visit us in person at our store for amazing offers</h1><br>
                    <h2>Store Location</h2>
                
                    <p>
                        123 apestrong st.<br> Charlotte, NC
                    </p><br>
                    <h2>Store Hours</h2>
                    <p>Weekdays - 6:00 AM - 9:00 PM</p>
                    <p>Weekends - 8:00 AM - 8:00 PM</p><br>
                    </div>
                    <div class='contact'>
                        <h1> Get in touch with us via email</h1><br>
                        <p>Fill out all the fields. Note: Your credential will remain confidential and not be shared with anyone.</p><br>
                        
                       
                        <hr>
                           <!-- contact us form which is linked to /contact and setting method as post -->
                        <form action="<%=request.getContextPath()%>/Contact" method="post" name="form1" id="form1">  
                           <!-- adding a field for name -->
                             <label for="name"><b>Name</b></label>
                             <input type="text" placeholder="Name" name="name" id="name" required><br>
                            <!-- adding a field for email -->
                             <label for="email"><b>Email</b></label>
                             <input type="text" placeholder="Email" name="email" id="email" required><br>
                            <!-- adding a field for message -->
                             <label for="message"><b>Message</b></label>
                             <textarea id="message" name="message" placeholder="Write your message.." required></textarea><br>
                             <!--<button type="button" class="submit" id="contactbtn">Submit</button>-->
                             <button>Submit</button><!-- adding a submit button -->
                        </form><!-- end form -->
                    </div>
                             <div id="">
                                 
                             </div>
            </div>
        </div>
            
        <footer><!-- footer -->
            <div class="footer">
                <div class="container">
                    <div class="footer-col">
                        <p>FarmWay LLC</p>
                        <p>123 apestrong st.<br>Charlotte, NC<br>United States<br>(704)-888-8888<br>contact-us@farmway.com</p>
                    </div>
                </div>
                    
             </div>
            
        </footer><!-- end footer -->
    </body><!-- end body -->
</html<!-- end html -->
