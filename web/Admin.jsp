<%-- 
    Document   : Admin
    Created on : 12 Apr 2024, 14:17:28
    Author     : ovie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <div class="offcanvas offcanvas-end" id="demo">
            <div class="offcanvas-header">
                <h1 class="offcanvas-title">Heading</h1>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
            </div>
            <div class="offcanvas-body">
                <p>Some text lorem ipsum.</p>
                <p>Some text lorem ipsum.</p>
                <p>Some text lorem ipsum.</p>
                <button class="btn btn-secondary" type="button">A Button</button>
            </div>
        </div>
        <div>
            <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                               url="jdbc:mysql://localhost/Hotel"  
                               user="root"  password="password"/>  

            <sql:query dataSource="${db}" var="rs">  
                SELECT * from ROOMS;  
            </sql:query>
                
                <table class="table table-striped m-3 w-75 float-start caption-top" border="1">
                    <caption>Rooms</caption>
                <tr>
                    <th>ID:</th>
                    <th>BedType:</th>
                    <th>Status:</th>
                    <th>Description:</th>
                </tr>
                <c:forEach var="table" items="${rs.rows}">
                    <tr>
                    <td><c:out value="${table.RID}"/></td>
                    <td><c:out value="${table.BedType}"/></td>
                    <td><c:out value="${table.Status}"/></td>
                    <td><c:out value="${table.Description}"/></td>
                    </tr>
                </c:forEach>
            </table>


            <div class="container-fluid mt-5">
               
                <button class="btn btn-info float-end fs-3 text-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo">
                    &equiv;
                </button> 
                <p>The .offcanvas-end class positions the offcanvas to the right of the page.</p>
            </div>


    </body>
</html>
