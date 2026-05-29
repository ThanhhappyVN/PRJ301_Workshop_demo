<%-- 
    Document   : customerDashBoard_page
    Created on : May 23, 2026, 2:00:47 PM
    Author     : DatNuoc
--%>
<%@page import="java.util.List"%>
<%@page import="dto.Car"%>
<%@page import="DAO.CarDAO"%>
<%@page import="dto.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% //khu vuc de code java
            Customer cus = (Customer)session.getAttribute("USER");
            if(cus==null){
            response.sendRedirect("login_web.jsp");
            return;
            }
            CarDAO carDAO = new CarDAO();
            List<Car> cars = carDAO.getAllCars(cus.getCustomerID());
        %>
    </head>
    <body>
        <h2>Customer Profile</h2>

        <p>Name: <%= cus.getFullName() %></p>

        <p>Phone: <%= cus.getPhoneNumber() %></p>

        <p>Password: <%= cus.getPassword() %></p>

        <p>Email: <%= cus.getEmail() %></p>

        <p>Address: <%= cus.getAddress() %></p>

        <p>Tier: <%= cus.getTierName() %></p>

        <p>Total Bookings: <%= cus.getTotalBookings() %></p>
        
        <h3>My Vehicles</h3>
        <table border="1">
            <tr>
                <th>License Plate</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Color</th>
            </tr>
            <%
                for (Car car : cars) {
            %>
            <tr>
                <td><%= car.getLicensePlate() %></td>
                <td><%= car.getBrand() %></td>
                <td><%= car.getModel() %></td>
                <td><%= car.getColor() %></td>
            </tr>
            <%
                }
            %>
        </table>

<a href="LogoutController">Logout</a>
    </body>
</html>
