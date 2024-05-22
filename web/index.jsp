<%-- 
    Document   : index
    Created on : 1 Mar 2024, 12:19:54
    Author     : ovie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        
//        if(session.getAttribute("auth") == null){
//        response.sendRedirect("/Hotel/login.jsp");
//            RequestDispatcher dispatch = request.getRequestDispatcher("/index.jsp");
//            dispatch.include(request, response);
//        }
    %>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css"/>
    </head>
    <body>
        <script src="js/bootstrap.min.js"></script>
        <c:import url="Navbar.jsp"></c:import>

        <!-- Carousel -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="4"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="5"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/beach2.jpg" alt="Los Angeles" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>Los Angeles</h3>
                        <p>We had such a great time in LA!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/beach.jpg" alt="Chicago" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>Chicago</h3>
                        <p>Thank you, Chicago!</p>
                    </div> 
                </div>
                <div class="carousel-item">
                    <img src="images/life-interior.jpg" alt="New York" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Apple!</p>
                    </div>  
                </div>
                <div class="carousel-item">
                    <img src="images/life-resort.jpg" alt="New York" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Apple!</p>
                    </div>  
                </div>
                <div class="carousel-item">
                    <img src="images/life-resort2.jpg" alt="New York" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Apple!</p>
                    </div>  
                </div>
                <div class="carousel-item">
                    <img src="images/ocean.jpg" alt="New York" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Ocean!</p>
                    </div>  
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>




    </body>
</html>

