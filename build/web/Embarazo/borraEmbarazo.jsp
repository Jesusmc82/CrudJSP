<%-- 
    Document   : borraProfesional
    Created on : 15-mar-2018, 22:39:24
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
        <link REL=StyleSheet HREF="../style.css" TYPE="text/css" MEDIA=screen>
        <title>Embarazos</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=Embarazos.jsp">
    </head>
    <body>
        <div class="bg">
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();
                String ID_Embarazos = request.getParameter("ID_Embarazos");
                String query = "DELETE FROM Embarazos WHERE ID_Embarazos=" + ID_Embarazos;
                s.execute(query);
                s.close();
            %>
            <h3>Se ha eliminado el embarazo seleccionado</h3> 
        </div>
    </body>