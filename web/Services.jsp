<%-- 
    Document   : Services
    Created on : 25 Mar 2024, 10:38:14
    Author     : Light
--%>
<%@page import="Hotel.ServiceDao" %>
<%@page import="Hotel.ServiceBean" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        ServiceDao sd = new ServiceDao(); 
        List<ServiceBean> services = sd.service();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>
    </head>
    <body>
        <div class="d-flex justify-content-evenly">
            <%
                if(!services.isEmpty()){
                for(ServiceBean s :services){
            %>
            <div class="card mb-3" style="max-width: 340px;">
                <div class="card mb-3">
                    <img src="images/life-interior.jpg" class="card-img-top"alt=""/>
                    <div class="card-body">
                        <h5 class="card-title"><%=s.getBedType()%></h5>
                        <p class="card-text"><%=s.getDescription()%></p>
                        <p class="card-text text-danger"><%=s.getStatus()%></p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
            <%
                    }
            }
        
            %>
        </div>
        <a href="https://ibb.co/xqtZjWn"><img src="https://i.ibb.co/Wv4CyZr/5-bedroom-seim-detached-at-Magodo.jpg" alt="5-bedroom-seim-detached-at-Magodo" border="0"></a>
        <a href="https://ibb.co/kyv0JBY"><img src="https://i.ibb.co/6ZLb8w6/4-bedroom-terrace-in-Orchid-auto-x2.jpg" alt="4-bedroom-terrace-in-Orchid-auto-x2" border="0"></a>
        <a href="https://ibb.co/8zXZJ63"><img src="https://i.ibb.co/7gbmH2c/4-bedroom-detached-duplex-at-Ikota-auto-x2.jpg" alt="4-bedroom-detached-duplex-at-Ikota-auto-x2" border="0"></a>
        <a href="https://ibb.co/Khn8NF4"><img src="https://i.ibb.co/vq9MsZy/life-interior-home-room-wallpaper-preview.jpg" alt="life-interior-home-room-wallpaper-preview" border="0"></a>
        <a href="https://ibb.co/T1TTv2T"><img src="https://i.ibb.co/5k99M49/life-resort-hotel-resort-hotel-wallpaper-preview.jpg" alt="life-resort-hotel-resort-hotel-wallpaper-preview" border="0"></a>
        <a href="https://ibb.co/pX3ptkB"><img src="https://i.ibb.co/3h0HDP9/life-resort-travel-vacation-wallpaper-preview.jpg" alt="life-resort-travel-vacation-wallpaper-preview" border="0"></a>
        <a href="https://ibb.co/SmvVgYJ"><img src="https://i.ibb.co/5jcs3p2/ocean-summer-summertime-hotel-wallpaper-preview.jpg" alt="ocean-summer-summertime-hotel-wallpaper-preview" border="0"></a>
    </body>
</html>
