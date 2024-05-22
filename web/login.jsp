<%-- 
    Document   : login
    Created on : 1 Mar 2024, 12:52:42
    Author     : ovie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <style>
            body{
                background-image: url(images/beach.jpg);
                /*background-size: 100%;*/
            }
            .bg-blur{
                /*filter: blur(5px);*/
                /*-webkit-filter: blur(5px);*/
                background: rgba(0, 0, 0, 0.5);
            }
            input[type=text],input[type=password]{
                border: none;
                border-bottom: 1px solid #fff;
                background: none;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <script src="js/bootstrap.min.js"></script>
        <center>
        <div class="card m-5 p-2 text-light bg-blur" style="width:400px">
            <div class="card-body">
                
                <form method="post" action="AuthServlets">
                        <h3 class="card-title m-3">Login</h3>
                    <p>Username</p>
                    <input type="text" name="user"/>
                    <p>Password</p>
                    <input type="password" name="pass"/><br/>
                    <input class="mt-2 btn btn-dark" type="Submit" value="Log in"/><br/>
                    <a href="Register.jsp" class="text-light">Don't have an Account? Sign up</a>
                </form>
            </div>
        </div>
        </center>
    </body>
</html>
