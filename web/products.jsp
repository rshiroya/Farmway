<%-- 
    Document   : products
    Created on : Jun 26, 2021, 6:35:59 PM
    Author     : rshiroya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Products</title>
        <link rel="stylesheet" href="css.css"> <!-- linking css file -->
        <script src="<%=request.getContextPath()%>/javascript.js"></script> <!-- linking javascript file -->
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="nav">
                    <div class="logo"> 
                        <img src="images/logo.png" alt="weblogo"> <!-- adding logo -->
                    </div>
                    <nav> <!-- nav bar -->
                        <ul> 
                            <li><a href="index.jsp">Home</a></li> <!-- adding a link to index page  -->
                            <li><a href="products.jsp">Products</a></li> <!-- adding a link to products page  -->
                            <li><a href="contact.jsp">Contact</a></li> <!-- adding a link to contact page -->
                            <li><a href="aboutus.jsp">About Us</a></li> <!--adding a link to  about us pag e -->
                            
                            <!-- if else statements based on whether the user has logged in or not -->
                            <%
                                String username1 = (String)session.getAttribute("username");
                                if(username1 == null){
                                        
                            
                            %>
                            <!-- if the user has not logged in, add a link to login page -->
                            <li><a href="<%=request.getContextPath()%>/account.jsp">Log In</a></li>
                            </ul>
                            
                            
                    </nav> <!-- end nav -->
                </div>
            </div>
        </div>
                            <!-- Message for user to login to view this week's newsletter -->
                            <center>
                                <h2>To view this week's product list, please log In or Sign up to our website</h2><br>
                                <h3>If you do not have an existing account, please register for an account</h3>
                                <br><br><br>
                                <div id="cen">
                                    
                                    <a href ="<%=request.getContextPath()%>/account.jsp">Log In</a>
                                    <!-- adding a clickable link to redirect to login page -->
                                </div>
                                <br><br><br><br><br><br><br><br><br>
                            </center>
                            <% 
                                } 
                                    else{
                            %>
                            <!-- if the user has logged in, welcome user and add a logout page -->
                            <li><a>Welcome Back, <%=session.getAttribute("username")%></a></li>
                            <li><a href ="<%=request.getContextPath()%>/Logout">Log Out</a></li>
                            
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
            <!-- displaying products -->
        <div class="small-container" id="product">
            <h2 class="prod">Featured Products</h2>
            
            <div class="row">
                    <!-- adding tomato photo and its price -->
                <div class="col-4">
                    <img src="images/tomato.jpg" alt="tomato">
                    <h4>Tomatoes</h4>
                    <p>$1.97 per pound</p>
                </div>
                    <!-- adding lime photo and its price -->
                <div class="col-4">
                    <img src="images/lime.jpg" alt="Lime">
                    <h4>Lime</h4>
                    <p>$1.57 per pound</p>
                </div>
                    <!-- adding lemon photo and its price -->
                <div class="col-4">
                    <img src="images/lemon.jpeg" alt="lemon">
                    <h4>Lemon</h4>
                    <p>$1.67 per pound</p>
                </div>
                    <!-- adding potato photo and its price -->
                <div class="col-4">
                    <img src="images/potato.png" alt="Potato">
                    <h4>Potatoes</h4>
                    <p>$1.27 per pound</p>
                </div>
                <!-- adding strawberry photo and its price -->
                <div class="col-4">
                    <img src="images/strawberry.jpg" alt="strawberry">
                    <h4>Strawberry</h4>
                    <p>$1.27 per pound</p>
                </div>
                <!-- adding cherry photo and its price -->
                <div class="col-4">
                    <img src="images/cherry.jpg" alt="cherry">
                    <h4>Cherry</h4>
                    <p>$1.27 per pound</p>
                </div>
                <!-- adding cherry photo and its price -->
                <div class="col-4">
                    <img src="images/peach.jpg" alt="peach">
                    <h4>Peach</h4>
                    <p>$1.27 per pound</p>
                </div>
                <!--adding banana photo and its price  -->
                <div class="col-4">
                    <img src="images/banana.jpg" alt="banana">
                    <h4>Banana</h4>
                    <p>$1.27 per pound</p>
                </div>
        </div>    
        </div>
            <% } %>
        <footer><!-- footer -->
            <div class="footer">
                <div class="container">
                    <div class="footer-col">
                        <p>FarmWay LLC</p>
                        <p>123 apestrong st.<br>Charlotte, NC<br>United States<br>(704)-888-8888</p>
                    </div>
                 
                </div>
            </div>
        </footer><!-- end footer -->
    </body> <!--end body  -->
</html><!-- end html -->
