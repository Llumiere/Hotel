<%-- 
    Document   : Book
    Created on : 5 Apr 2024, 13:43:53
    Author     : ovie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="Hotel.RoomDao" %>
<%@page import="Hotel.RoomBean" %>

<!DOCTYPE html>
<html>
    <%
        RoomDao rd = new RoomDao();
        List<RoomBean> rooms = rd.room();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <c:import url="Navbar.jsp"></c:import>
        <div class="d-flex justify-content-center mt-3">
            <h3 class="mt-auto">Booking</h3><br/>
        <p><i>Let us give you maximum comfort</i></p>
        </div>
        <div class="container mt-4">
            <div class="row">
                <%
                    if(!rooms.isEmpty()){
                        for(RoomBean r : rooms){
            
                %>
                <div class="col-sm-4 mb-2">
                    <div class="card">
                        <img src="<%=r.getImages()%>" class="card-img-top"alt=""/>
                        <div class="card-body">
                            <h5 class="card-title"><%=r.getBedType()%></h5>
                            <p class="card-text"><%=r.getDescription()%></p>
                            <p class="card-text text-danger"><%=r.getStatus()%></p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            <a href="PopulateRoom?id=<%=r.getId()%>" class="btn btn-primary">Book</a>
                        </div>
                    </div>
                </div>
                <%
                    }
            }
                %>
            </div>
        </div>
    </body>
</html>
