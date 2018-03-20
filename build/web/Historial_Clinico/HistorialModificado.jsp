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
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=HistorialClinico.jsp"> 
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>            
            <% request.setCharacterEncoding("UTF-8");%>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();

                int nhc = Integer.valueOf(request.getParameter("NHC"));
                String evolucion = request.getParameter("Evolucion");
                String dni = request.getParameter("DNI");
                String observaciones = request.getParameter("Observaciones");

                String actualizacion = "UPDATE Historial_Clinico SET "
                        + " Evolucion = '" + evolucion + "',"
                        + " DNI = '" + dni + "',"
                        + " Observaciones= '" + observaciones + "'"
                        + " WHERE NHC= '" + nhc + "'";
                s.execute(actualizacion);
                conexion.close();
            %>
            <h3>Historial actualizado correctamente</h3>
    </body>
</html>