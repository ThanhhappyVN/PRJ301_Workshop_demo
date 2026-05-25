<%-- 
    Document   : customerDashBoard_page
    Created on : May 23, 2026, 2:00:47 PM
    Author     : DatNuoc
--%>
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
            response.sendRedirect("login_page.html");
            }else{
            
            }
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
