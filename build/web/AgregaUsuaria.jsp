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

        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="scripts.js"></script>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

       <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=Usuaria.jsp">
    </head>
    <body>
        <div class="bg">
        <% request.setCharacterEncoding("UTF-8"); %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas" , "root", "root");
            Statement s = conexion.createStatement();

            String insercion = "INSERT INTO Usuaria (`DNI`, `Nombre`, `Apellidos`, `Nacimiento`, `Direccion`, `Telefono`,`Mail`) VALUES "
                    + "('" + request.getParameter("DNI") + "', "
                    + "'" + request.getParameter("Nombre") + "', "
                    + "'" + request.getParameter("Apellidos") + "', "
                    + "'" + request.getParameter("Nacimiento") + "', "
                    + "'" + request.getParameter("Direccion") + "', "
                    + "'" + request.getParameter("Telefono") + "', "
                    + "'" + request.getParameter("email") + "') ; " ;
     
            s.execute(insercion);
            String introduccion = "INSERT INTO Historial_Clinico (`NHC`, `Evolucion`, `DNI`, `Observaciones`) VALUES ('"
                    + Integer.parseInt(request.getParameter("NHC"))
                    + "', '" + request.getParameter("Evolucion")
                    + "', '" + request.getParameter("DNI")
                    + "', '" + request.getParameter("Observaciones")
                    + "')";
            s.execute(introduccion);
            conexion.close();
        %>
        <h3>Nueva Usuaria</h3>
        </div>
    </body>
</html>