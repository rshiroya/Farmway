<%-- 
    Document   : admin
    Created on : Jun 27, 2021, 2:26:37 PM
    Author     : rshiroya
--%>
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
                        <img src="<%=request.getContextPath()%>/images/logo.png" alt="weblogo"><!-- adding a logo picture -->
                    </div>
                    <nav><!-- nav bar -->
                        <ul> 
                            
                            <li><a href="<%=request.getContextPath()%>/userdetailsServlet?action=viewuser">View User Details</a></li><!-- adding a link for user details which is linked to userdetailsServlet -->
                            <li><a href="<%=request.getContextPath()%>/messageServlet">View Messages</a></li> <!-- adding a link to view messages whic his linked to messageServlet -->
                            <li><a href ="<%=request.getContextPath()%>/Logout">Log Out</a></li><!-- adding a link to logout page -->
                            
                            
                        </ul>
                            
                    </nav><!-- end nav bar -->
                </div> 
            </div>
                            
            <div class="row">
                   <!-- main content -->
                <div class="col-2">
                    <h2>Eat Organic. Stay Healthy.....</h2>
                </div>

                <div class="homepageImg">
                    <img src="<%=request.getContextPath()%>/images/homepageImg.jpg" alt="homepageImg"><!-- adding a homepageImg photo -->
                    <div class="centered">
                        <p class="imgtext">Shop from locally grown fresh produce......<br></p>
                       
                    </div>
                </div>
            </div>
        </div>
        <footer><!-- footer -->
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
        </footer><!-- end footer -->
    </body><!-- end body -->
</html> <!-- end html -->
