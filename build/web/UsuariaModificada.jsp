<%-- 
    Document   : modificaUsuaria
    Created on : 16-mar-2018, 18:31:42
    Author     : jesus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <link REL="StyleSheet" HREF="style.css" TYPE="text/css" MEDIA="screen">
        <title>Modifica Usuaria</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <a href=index.jsp><button class="button2">Pagina Principal</button></a>
            <a href=Usuaria.jsp><button class="button2">Usuaria</button></a>
            <% request.setCharacterEncoding("UTF-8");%>
            <h3>Modificación Usuaria</h3>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();

                String nombre = request.getParameter("Nombre");
                String apellidos = request.getParameter("Apellidos");
                String nacimiento = request.getParameter("Nacimiento");
                String direccion = request.getParameter("Direccion");
                String telefono = request.getParameter("Telefono");
                String mail = request.getParameter("Mail");
                String dni = request.getParameter("DNI");

                String actualizacion = "UPDATE Usuaria SET "
                        + " Nombre = '" + nombre + "',"
                        + " Apellidos= '" + apellidos + "',"
                        + " Nacimiento= '" + nacimiento + "',"
                        + " Direccion= '" + direccion + "',"
                        + " Telefono= '" + telefono + "',"
                        + " Mail= '" + mail + "'"
                        + " WHERE DNI= '" + dni + "'";
                s.execute(actualizacion);
                conexion.close();
            %>
            <h3> Usuaria actualizada correctamente</h3>
    </body>
</html>