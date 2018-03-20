<%-- 
    Document   : AgregaEmbarazo
    Created on : 19-mar-2018, 17:01:42
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

       <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=HistorialClinico.jsp">
    </head>
    <body>
        <div class="bg">
        <% request.setCharacterEncoding("UTF-8"); %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas" , "root", "root");
            Statement s = conexion.createStatement();
            String introduccion = "INSERT INTO Historial_Clinico (`NHC`, `Evolucion`, `DNI`, `Observaciones`) VALUES ('"
                    + Integer.valueOf(request.getParameter("NHC"))
                    + "', '" + request.getParameter("Evolucion")
                    + "', '" + request.getParameter("DNI")
                    + "', '" + request.getParameter("Observaciones")
                    + "')";
            s.execute(introduccion);
            //out.print(introduccion);
            conexion.close();
        %>
        <h3>Nuevo Historial</h3>
        </div>
    </body>
</html>