<%-- 
    Document   : borraUsuaria
    Created on : 15-mar-2018, 21:29:38
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MisMatronas</title>

        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="scripts.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<META HTTP-EQUIV="REFRESH" CONTENT="5; URL=Usuaria.jsp">
    </head>
    <body>
        <div class="bg">
            <h3>Se ha eliminado la usuaria seleccionada</h3>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                request.setCharacterEncoding("UTF-8");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();
                String dni = request.getParameter("DNI");
                String marca = "DELETE FROM Historial_Clinico WHERE DNI='" + dni + "'";
                String query = "DELETE FROM Usuaria WHERE DNI='" + dni + "'";
                s.execute(marca);
                s.execute(query);
            %>
        </div>
    </body>
</html>
