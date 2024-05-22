<%-- 
    Document   : Navbar
    Created on : 26 Apr 2024, 13:47:56
    Author     : ovie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> <nav class="navbar navbar-expand-sm navbar-dark bg-info sticky-top">
            <div class="container-fluid"> 
                <a class="navbar-brand rounded-pill border border-2" href="DashBoard.jsp">
                    <img src="images/usericon.png" alt="Logo" style="width:40px;" class="rounded-pill">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse text-light" id="mynavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">LOGIN</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Test.jsp">SERVICES</a>
                        </li>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Book.jsp">BOOK</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">ABOUT US</a>
                        </li>
                    </ul>
                    <%
                        if(session.getAttribute("auth") == (null)){
                    %>
                    <a class="" href="Cart.jsp">
                    <img src="images/cart-96.png" alt="Cart" style="width:40px;"/>
                    </a>
                    <form class="d-flex" action="Register.jsp"><input class="btn btn-dark" value="Sign up" type="submit"></form>
                        <% 
                            }
                            else{
                        %>
                    <form class="d-flex" action="LogOutServlet" method="get"><input class="btn btn-dark" value="Log out" type="submit"/></form>
                        <% 
                           }
                        %>
                        <%
//                   if(session.getAttribute("auth") == (null)){
//               out.print(
//                   "<form class='d-flex' action='Register.jsp'><input class='btn btn-dark' value='Signup' type='submit'></form>"
//                );
//                   }
//                   else{
//                 out.print(
//                   "<form class='d-flex' action='LogOutServlet' method='get'><input class='btn btn-dark' value='Log out' type='submit'/></form>"
//                 );
//                   }
                        %>

                    <!--                                <form class="d-flex" action="">
                                            <input class="form-control me-2" type="text" placeholder="Search">
                                            <button class="btn btn-dark" type="button">Log out</button>
                                        </form>-->
                </div>
            </div>
        </nav>
    </body>
</html>
