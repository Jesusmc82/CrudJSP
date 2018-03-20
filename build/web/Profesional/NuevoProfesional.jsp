<%-- 
    Document   : AgregaUsuaria
    Created on : 15-mar-2018, 9:34:36
    Author     : jesus
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MisMatronas</title>

        <link rel="stylesheet" type="text/css" href="../style.css">
        <script type="text/javascript" src="scripts.js"></script>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=Profesional.jsp">
    </head>
    <body>
        <div class="bg">
            <% request.setCharacterEncoding("UTF-8"); %>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();

                String ejecucion = "INSERT INTO Profesional (`Numero_Colegiado`, `Profesional`, `Nombre`, `Apellidos`) VALUES ('"
                        + Integer.parseInt(request.getParameter("Numero_Colegiado"))
                        + "', '" + request.getParameter("Profesional")
                        + "', '" + request.getParameter("Nombre")
                        + "', '" + request.getParameter("Apellidos")
                        + "')";
                s.execute(ejecucion);
                conexion.close();

            %>

            <h3>Nuevo Profesional</h3>        
        </div>
    </body>
</html>