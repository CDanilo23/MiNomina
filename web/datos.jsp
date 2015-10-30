<%-- 
    Document   : datos
    Created on : 26/10/2015, 06:51:40 PM
    Author     : Administrador
--%>

<%@page import="co.com.miNomina.Empleado"%>
<%@page import="javax.jms.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            
            Empleado empleado = new Empleado();
            empleado.setCodigo(codigo);
            empleado.setnombre(nombre);
            
            session.setAttribute("EmpleadoS",empleado);
            
            response.sendRedirect("index.jsp");
            
        %>
    </body>
</html>
