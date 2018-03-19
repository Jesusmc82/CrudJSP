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

        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="scripts.js"></script>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

       <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=Embarazos.jsp">
    </head>
    <body>
        <div class="bg">
        <% request.setCharacterEncoding("UTF-8"); %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas" , "root", "root");
            Statement s = conexion.createStatement();
            String introduccion = "INSERT INTO Embarazos (`ID_Embarazos`, `FPP`, `NHC`, `Pruebas_Diagnosticas`, `Numero_Colegiado`) VALUES ('"
                    + request.getParameter("ID_Embarazos")
                    + "', '" + request.getParameter("FPP")
                    + "', '" + Integer.parseInt(request.getParameter("NHC"))
                    + "', '" + request.getParameter("Pruebas_Diagnosticas")
                    + "', '" + Integer.parseInt(request.getParameter("Numero_Colegiado"))
                    + "')";
            s.execute(introduccion);
            conexion.close();
        %>
        <h3>Nueva Usuaria</h3>
        </div>
    </body>
</html>