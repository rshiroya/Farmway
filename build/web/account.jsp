<%-- 
    Document   : account
    Created on : Jun 26, 2021, 6:37:05 PM
    Author     : rshiroya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Login</title>
        <link rel="stylesheet" href="css.css"><!-- linking a css file -->
        <script src="javascript.js"></script><!-- linking a javascript file -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="nav">
                    <div class="logo">
                        <img src="images/logo.png" alt="weblogo"><!-- adding a logo picture -->
                    </div>
                    <nav><!-- nav bar -->
                        <ul> 
                            <li><a href="index.jsp">Home</a></li><!-- adding a link to index page -->
                            <li><a href="products.jsp">Products</a></li><!-- adding a link to products page -->
                            <li><a href="contact.jsp">Contact</a></li><!-- adding a link to contact page -->
                            <li><a href="aboutus.jsp">About Us</a></li><!-- adding a link to about us page -->
                           <!-- if else statements based on whether the user has logged in or not --> 
                            <%
                                String username1 = (String)session.getAttribute("username");
                                if(username1 == null){

                            
                            %>
                           <!-- if user has not logged in, adding a login page --> 
                            <li><a href="<%=request.getContextPath()%>/account.jsp">Log In</a></li>
                            
                            
                            <% 
                                } 
                                    else{
                            %>
                           <!-- if user has logged in, displaying welcome message and adding a log out page  -->
                            <li><a>Welcome Back, <%=session.getAttribute("username")%></a></li>
                            <li><a href ="<%=request.getContextPath()%>/Logout">Log Out</a></li>
                            <% } %>
                        </ul>
                    </nav><!-- ending nav bar -->
                </div>
            </div>
           <!-- sign in form -->
            <div class="sign-in">
                <h1>Login to your account</h1><br>
                <form action="servlet/LoginServlet" method = "post"><!-- linking form to login servlet and method as post -->
                <label for="username"><b>Username</b></label><!-- creating a username field -->
                    <input type="text" placeholder="firstname + lastname" name="username" id="email" required><br>
                <label for="password"><b>Password</b></label><!-- creating a password field  -->
                    <input type="password" placeholder="Enter Password" name="password" required><br>
                    <input type="submit" value="Login"><br><br><!-- creating a submit button -->
                    <span>Having trouble with username? Try entering your first name and last name</span>
                </form><!-- end sign in form -->
            </div> 
           <!-- register form -->
            <div class="register">

                <h2>Don't have an account? Click here to register one</h2>
                   <!-- creating a button for user to register -->
                <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>

                <div id="id01" class="modal">
                  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                  <form class="modal-content" action="servlet/Register" method = "post"><!-- linking form to servlet/Register and method as post -->
                    <div class="container">
                      <h1>Sign Up</h1>
                      <p>Please fill in this form to create an account.</p>
                      <hr>
                     <!-- creating a field for first name -->
                      <label for="firstName"><b>First Name</b></label>
                            <input type="text" placeholder="First Name" name="firstName" required>
                           <!-- creating a field for last name -->
                        <label for="lastName"><b>last Name</b></label>
                            <input type="text" placeholder="Last Name" name="lastName" required>
                           <!-- creating a field for sex -->
                        <label for='sex'><b>Sex</b></label><br><br>  
                       <!-- creating two radio buttons for male and female -->
                            <input type="radio" name="sex" value="Male" /> Male
                            <input type="radio" name="sex" value="Female" /> Female <br><br>
                           <!-- creating a field for email -->
                        <label for="email"><b>Email</b></label>
                            <input type="text" placeholder="Email" name="email" id="email" pattern="[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*" required><br>
                      <!-- creating a field for address -->
                        <label for="address"><b>Address</b></label>
                            <input type="text" placeholder="address" name="address" required>  
                           <!-- creating a field for password -->
                        <label for="password"><b>Password</b></label>
                            <input type="password" placeholder="Password" name="password" required>
                      <div class="clearfix">
                         <!-- creating a submit button -->
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                          <button type="submit" class="signupbtn">Register</button>
                      </div>
                    </div>
                  </form><!-- end register form -->
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
</html><!-- end html -->

