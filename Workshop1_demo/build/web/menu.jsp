<%-- 
    Document   : menu
    Created on : May 23, 2026, 1:08:36 PM
    Author     : DatNuoc
--%>
<%@page import="dto.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% //khu vuc nay de code java
    Customer cus=(Customer)session.getAttribute("User");
    if(cus==null){
        response.sendRedirect("login_page.html");
    }else{
    
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul>
            <li>welcome <% out.print(cus.getFullname());  %></li>
            <li><a href="#">logout</a></li>
            <li><a href="">manage cars</a>
                <ul>
                    <li><a href="#">add a car</a></li>
                    <li><a href="GetAllCarController">update a car</a></li>
                </ul>
            </li>
            <li><a href="#">view profile</a></li>
            <li>booking history</li>
            <li>carwash history</li>
            <li>....</li>
        </ul>
    </body>
</html>
<%
    
%>
