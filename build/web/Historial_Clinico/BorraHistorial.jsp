<%-- 
    Document   : BorraHistorial
    Created on : 19-mar-2018, 11:03:19
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
        <title>Historial Clinico</title>
        <link REL=StyleSheet HREF="../style.css" TYPE="text/css" MEDIA=screen>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=HistorialClinico.jsp">
   </head>
    <body>
        <div class="bg">
            <h3>El Historial se borró satisfactoriamente</h3>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                request.setCharacterEncoding("UTF-8");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();
                int NHC = Integer.parseInt(request.getParameter("NHC"));
                String marca = "DELETE FROM Historial_Clinico WHERE NHC='" + NHC + "'";
                s.execute(marca);
            %>
        </div>
    </body>
</html>