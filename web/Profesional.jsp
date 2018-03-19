<%-- 
    Document   : Profesional
    Created on : 15-mar-2018, 8:56:27
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
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <link REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
        <title>Profesional</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
<div class="bg1">
        <h1>MisMatronas.com</h1>
        <h3>Profesional</h3>
        <a href=index.jsp><button class="button2" width="80%">Pagina Principal</button></a>
        <a href=NuevoProfesional.html><button class="button2" width="80%">Nueva Profesional</button></a>
        <table class="table" border="3" bordercolor="blue">
            <thead>
            <tr style="background-color: white; opacity: .70">
                <th>Numero Colegiado</th><th>Profesional</th><th>Nombre</th><th>Apellidos</th>
            </tr>
            </thead>
            <tbody style="background-color: white; opacity: .70">
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();

                ResultSet listado = s.executeQuery("Select * FROM Profesional");

                while (listado.next()) {
                    out.println("<tr>");
                    out.println("<td>" + listado.getString("Numero_Colegiado") + "</td>");
                    out.println("<td>" + listado.getString("Profesional") + "</td>");
                    out.println("<td>" + listado.getString("Nombre") + "</td>");
                    out.println("<td>" + listado.getString("Apellidos") + "</td>");
            %>
            <td>
                    <form method="get" action="borraProfesional.jsp">
                        <input type="hidden" name="Numero_Colegiado" value="<%=listado.getString("Numero_Colegiado")%>"/>
                        <input class="button3" type="submit" value="Borrar">
                    </form>
                    <form method="get" action="modificaProfesional.jsp">
                        <input type="hidden" name="Numero_Colegiado" value="<%=listado.getString("Numero_Colegiado")%>">
                        <input type="hidden" name="Profesional" value="<%=listado.getString("Profesional")%>">
                        <input type="hidden" name="Nombre" value="<%=listado.getString("Nombre")%>">
                        <input type="hidden" name="Apellidos" value="<%=listado.getString("Apellidos")%>">
                        <input class="button3" type="submit" value="Modificar">
                    </form>
                </td>
            <%
                } //while
                conexion.close();
            %>
        </tr>
        </tbody>
        </table>
        </div>
        </body>
</html>