<%-- 
    Document   : ver
    Created on : 26/10/2015, 07:31:07 PM
    Author     : Administrador
--%>

<%@page import="co.com.miNomina.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Empleado GetEmple = (Empleado) session.getAttribute("EmpleadoS");
            out.println("el codigo guardado es: " + GetEmple.getCodigo() );
            out.println("el nombre guardado es: " + GetEmple.getnombre());
        %>
    </body>
</html>
