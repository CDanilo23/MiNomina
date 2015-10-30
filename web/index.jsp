<%-- 
    Document   : index
    Created on : 26/10/2015, 06:48:07 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="datos.jsp" method="POST">
            codigo <input type="text" id="codigo" name="codigo"/><br>
            nombre <input type="text" id="nombre" name="nombre"/><br>
            <input type="submit" value="enviar">
        </form>
        <a href="ver.jsp">ver</a>
    </body>
</html>
