<%-- 
    Document   : ProfesionalModificado
    Created on : 20-mar-2018, 10:56:29
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
        <link REL="StyleSheet" HREF="../style.css" TYPE="text/css" MEDIA="screen">
        <title>Modifica Usuaria</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=Profesional.jsp"> 
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <a href=../index.jsp><button class="button2">Pagina Principal</button></a>
            <a href=Profesional.jsp><button class="button2">Profesional</button></a>
            <% request.setCharacterEncoding("UTF-8");%>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();

                int colegiado = Integer.valueOf(request.getParameter("Numero_Colegiado"));
                String profesional = request.getParameter("Profesional");
                String nombre = request.getParameter("Nombre");
                String apellidos = request.getParameter("Apellidos");

                String actualizacion = "UPDATE Profesional SET "
                        + " Profesional = '" + profesional + "',"
                        + " Nombre = '" + nombre + "',"
                        + " Apellidos= '" + apellidos + "'"
                        + " WHERE Numero_Colegiado= " + colegiado;
                s.execute(actualizacion);
                conexion.close();
            %>
            <h3> Usuaria actualizada correctamente</h3>
    </body>
</html>