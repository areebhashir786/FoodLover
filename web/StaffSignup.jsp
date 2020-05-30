<%-- 
    Document   : register_page
    Created on : May 10, 2020, 6:12:43 PM
    Author     : areeb
--%>

<%@page import="com.esr.entities.Owner"%>
<%@page import="com.esr.entities.Message"%>
<%@page import="com.esr.database.RestaurantDao"%>
<%@page import="com.esr.helper.ConnectionProvider"%>
<%@page import="com.esr.entities.Restaurant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Staff | SignUp</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    </head>
    <body>
        <style type="text/css">

            .card{
                border: #2980b9 4px solid; 
                border-radius:20px;
            }
            .card-body{
                padding: 0px !important;
            }
            .btn{
                background:#343A40;
                width:125px;
                padding-top:5px;
                padding-bottom:5px;
                color:white;
                border-radius:4px;
                border: #343A40 1px solid;

                margin-top:20px;
                margin-bottom:20px;
                float:left;
                margin-left:16px;
                font-weight:800;
                font-size:0.8em;
            }

            .btn:hover{
                background:white; 
            }
        </style>
    <%
        Owner o = (Owner) session.getAttribute("currentUser");  
    %>
        
        <form id = "staffSignup" name="staffForm" action="StaffRegisterServlet" method="POST">  
            <div class="container-fluid">
                <div class="jumbotron">
                    <br><br><br><br>

                    <div class="card bg-light">
                        <div class="row">
                            <article class="card-body mx-auto col-md-8">
                                <h2 class="card-title mt-3 text-center">Staff Registration</h2>

                                <br><br>

                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                    </div>
                                    <input name="staff_name"  class="form-control" placeholder="Username" type="text" required>
                                </div>

                                <br><br>

                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                                    </div>
                                    <input name="staff_email" class="form-control" placeholder="Email address" type="email" required>
                                </div>
                                <br><br>

                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                    </div>
                                    <input name="staff_password" class="form-control" placeholder="Create password" type="password" required>
                                </div> 
                                
                                <div class="container text-center" id="staffLoader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>
                                <div class="form-group">
                                    <button id="staffSubmit-btn" class="btn" type="submit"> Signup </button>
                                </div>
                                

                            </article>

                        </div>
                        <p class="text-center" style="color: #343A40;">Have an account? <a href="StaffLogin.jsp">Log In</a> </p>                                                                

                    </div>     
                </div>
            </div>


            <br><br>

        </form>  

    </body>
</html>