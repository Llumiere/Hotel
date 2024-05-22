<%-- 
    Document   : Register
    Created on : 1 Mar 2024, 12:53:16
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
                <form method="post" action="RegServlet">
                    <h2>Register</h2>
                    <p>First Name</p>
                    <input name="fname" type="text"/>
                    <p>Last Name</p>
                    <input name="lname" type="text"/>
                    <p>Username</p>
                    <input name="usern" type="text"/>
                    <p>Email</p>
                    <input name="mail" type="text"/>
                    <p>Password</p>
                    <input name="pass" type="text"/>
                    <p>Confirm Password</p>
                    <input name="cpass" type="text"/><br/>
                    <input class="mt-2 btn btn-dark" type="Submit" value="Register"/><br/>
                    <a href="login.jsp" class="text-light">Already have an Account? Log in</a>
                </form>
            </div>
        </div>
    </center>
    <div class="container">

    </div>
</body>
</html>
