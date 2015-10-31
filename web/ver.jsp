<%-- 
    Document   : ver
    Created on : 26/10/2015, 07:31:07 PM
    Author     : Administrador
--%>

<%@page import="co.com.miNomina.MisFuncionarios"%>
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
            MisFuncionarios misFuncionarios = (MisFuncionarios) session.getAttribute("EmpleadoS");
            if (misFuncionarios != null) {
                for (Empleado empleado : misFuncionarios.getFuncionarios()) {
                    out.println("el codigo guardado es: " + empleado.getCodigo());
                    out.println("el nombre guardado es: " + empleado.getNombre());
                    out.println("<br>");
                }
            }
            
            misFuncionarios.insertarDatos(misFuncionarios);
//             out.println("<td><a href ='datos.jsp?id="+catalogo.getId()+"&nombre="+catalogo.getNombre()+"&precio="+catalogo.getPrecio()+"&imagen="+catalogo.getImagen()+"' class = 'btnAlquilar'>Alquiler</a></td>");

        %>
    </body>
</html>
