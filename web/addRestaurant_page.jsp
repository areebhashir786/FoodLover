<%-- 
    Document   : addRestaurant
    Created on : May 11, 2020, 11:46:06 AM
    Author     : areeb
--%>

<%@page import="com.esr.entities.Message"%>
<%@page import="com.esr.database.RestaurantDao"%>
<%@page import="com.esr.helper.ConnectionProvider"%>
<%@page import="com.esr.entities.Restaurant"%>
<%@page import="com.esr.entities.Owner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Restaurant</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    </head>
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
    
    <body>    
    <%
        Owner ownerId = (Owner) session.getAttribute("currentUser");  
    %>
        <form id = "rest_form" action="RestaurantServlet" method="POST">  
          
            <div class="container-fluid">
                <div class="jumbotron">
                    <br><br><br><br>

                    <div class="card bg-light">
                        <div class="row">
                            <article class="card-body mx-auto col-md-8">
                                <h2 class="card-title mt-3 text-center">Restaurant Info</h2>

                                <br><br>

                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fas fa-utensils"></i> </span>
                                    </div>
                                    <input name="res_name"  class="form-control" placeholder="Restaurant Name" type="text" required>
                                </div>

                                <br><br>
                                <!--<form name="myForm2" action="reg" onchange="return checkEmail()" onsubmit="return checkEmail()" method="post">-->
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fas fa-utensils"></i> </span>
                                    </div>
                                    <input name="res_description" class="form-control" placeholder="Description" type="text">
                                </div>
                                <br><br>

                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fas fa-map-marker-alt"></i> </span>
                                    </div>
                                    <input name="res_address" class="form-control" placeholder="Address" type="text" required>
                                </div> 
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fas fa-map-marker-alt"></i> </span>
                                    </div>
                                    <input name="res_contact" class="form-control" placeholder="Contact" type="text" required>
                                </div>
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i class="fas fa-tag"></i> </span>
                                    </div>
                                    <input name="res_discount" class="form-control" placeholder="Discount" type="text">
                                </div>
                                <div class="container text-center" id="loaderr" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>
                                
                                <tr>
                                            <td>Restaurant Pic:</td>
                                            <td>
                                                <input type="file" name="res_image" class="form-control" >
                                            </td>
                                 </tr>
    
                                <div class="form-group" >
                                    <button id="addd-btn" class="btn" type="submit"> ADD </button>
                                </div>
                            </article>

                        </div>
                    </div>     

                </div>
            </div>

            <br><br>
            <br><br>

        </form>  
        
    </body>
</html>
