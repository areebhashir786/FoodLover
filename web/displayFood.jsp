<%-- 
    Document   : displayFood
    Created on : May 28, 2020, 1:44:42 AM
    Author     : areeb
--%>

<%@page import="com.esr.database.FoodDao"%>
<%@page import="com.esr.helper.ConnectionProvider"%>
<%@page import="com.esr.entities.Food"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page errorPage="error_page.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Food</title>
    </head>
    <body>
        <%
            Food fd = (Food) session.getAttribute("foodList");
            int restaurantID = Integer.parseInt(request.getParameter("resId"));
            FoodDao d = new FoodDao(ConnectionProvider.getConnection());
            List<Food> food = new ArrayList<>();

            food = d.getRestaurantFood(restaurantID);
            //out.println(fd.getRestaurantId());
            if (food == null) {
                response.sendRedirect("error_page.jsp");
            }
            int i = 0;
            for (Food f : food) {
        %>

        <div class="container">
            <div>
                <div class="card text-center" >
                    <div class="card-body">
                        <h5 class="card-title">Food Id :<%= f.getFoodId() %></h5>
                        <p class="card-text">Food Name :<%= f.getFoodName() %>
                        <p class="card-text">FoodType  :<%= f.getType_of_Food() %>
                        <p class="card-text">Description  :<%= f.getDescription() %>
                        <p class="card-text">Price     :<%= f.getPrice() %>
                            
                        </p>
                    </div>
                </div>
            </div>
        </div>    


        <%
            }
        %>

    </body>
</html>
