<%-- 
    Document   : RestaurantView
    Created on : May 12, 2020, 6:13:17 PM
    Author     : areeb
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.esr.database.RestaurantDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.esr.helper.ConnectionProvider"%>
<%@page import="com.esr.entities.Restaurant"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
        <script  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

        <title>Restaurant View</title>
    </head>
    <body>

        <!-- Start of Navbar -->
        <%@include file ="navbar.jsp" %>
        <!--end of Navbar-->

        <br><br><br>
        <%

            int restaurantID = Integer.parseInt(request.getParameter("res_id"));
            RestaurantDao d = new RestaurantDao(ConnectionProvider.getConnection());
            Restaurant res = new Restaurant();

            res = d.getRestaurantByRestaurantId(restaurantID);
            if (res == null) {
                out.println("<h2> unable to read</h2>");

            }
            Cookie c = new Cookie("getmyid", request.getParameter("res_id"));
            response.addCookie(c);

        %>
<!--        <img class="card-img-top" src="img/<%= res.getImage()%>" alt="Card image cap">
        <label class="display-2 text-center"><%= res.getName()%></label><br><br>
        <h2 class="display-3">Description:: <%= res.getDescription()%></h2>
        <h1 class="display-3">Address <%= res.getAddress()%></h3>
        <h1 class="display-3">Contact <%= res.getContact()%></h1>
        <h1 class="display-3">Discount <%= res.getDiscount()%></h1>-->

        <div class="row">
            <div class="col s12 m7">
                <div class="card">
                    <div class="card-image">
                        <img src="img/<%= res.getImage()%>">
                        <span class="card-title text-center"><h1><%= res.getName()%></h1></span>
                    </div>
                    <div class="card-content">
                        <p>&nbsp;<h1>Description:</h1> <%= res.getDescription()%></p>
                        <p>&nbsp;<h1>Address</h1> <%= res.getAddress()%></p>
                        <p>&nbsp;<h1>Contact </h1><%= res.getContact()%></p>
                        <p>&nbsp;<h1>Discount</h1> <%= res.getDiscount()%></p>
                    </div>
                    <div class="card-action">
                        <!--          <a href="#">This is a link</a>-->
                    </div>
                </div>
            </div>
        </div>



        <div class="form-group text-center">
            <a class="btn btn-primary" href="displayFood.jsp?resId=<%= res.getId()%>" role="button">View Food</a>
            <br><br>
            <a class="btn btn-primary" href="CustomerLogin.jsp?resId=<%= res.getId()%>" role="button">Give Feedback</a>
            <br><br>
            <a class="btn btn-primary" href="viewComments.jsp?resId=<%= res.getId()%>" role="button">View Feedback</a>
        </div>



        <!--bootstrap JS-->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script><script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


        <!-- Start of Navbar -->
        <%@include file ="footer.jsp" %>
        <!--end of Navbar-->

    </body>
</html>
