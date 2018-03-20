<%-- 
    Document   : Usuaria
    Created on : 15-mar-2018, 8:28:02
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
        <title>Usuaria</title>
                <link REL=StyleSheet HREF="../style.css" TYPE="text/css" MEDIA=screen>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="cerulean">
    </head>
    <body>
        <div class="bg1">
            <h1>MisMatronas.com</h1>
            <h3>Usuarias</h3>
            <a href=../index.jsp><button class="button2" width="80%">Pagina Principal</button></a>
            <a href=NuevaUsuaria.html><button class="button2" width="80%">Nueva Usuaria</button></a>
            <table class="table" border="3" bordercolor="blue">
                <thead>
                    <tr style="background-color: white; opacity: .70">
                        <th>DNI</th><th>Nombre</th><th>Apellidos</th><th>Nacimiento</th><th>Dirección</th><th>Teléfono</th><th>Mail</th>
                    </tr>
                </thead>
                <tbody style="background-color: white; opacity: .70">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                        Statement s = conexion.createStatement();

                        ResultSet listado = s.executeQuery("Select * FROM Usuaria order by nombre");
                        while (listado.next()) {
                            out.println("<tr>");
                            out.println("<td >" + listado.getString("DNI") + "</td>");
                            out.println("<td>" + listado.getString("Nombre") + "</td>");
                            out.println("<td>" + listado.getString("Apellidos") + "</td>");
                            out.println("<td>" + listado.getString("Nacimiento") + "</td>");
                            out.println("<td>" + listado.getString("Direccion") + "</td>");
                            out.println("<td>" + listado.getString("Telefono") + "</td>");
                            out.println("<td>" + listado.getString("Mail") + "</td>");

                    %>
                <td>
                    <form method="get" action="borraUsuaria.jsp">
                        <input type="hidden" name="DNI" value="<%=listado.getString("DNI")%>"/>
                        <input class="button3" type="submit" value="Borrar">
                    </form>
                    <form method="get" action="modificaUsuaria.jsp">
                        <input type="hidden" name="DNI" value="<%=listado.getString("DNI")%>">
                        <input type="hidden" name="Nombre" value="<%=listado.getString("Nombre")%>">
                        <input type="hidden" name="Apellidos" value="<%=listado.getString("Apellidos")%>">
                        <input type="hidden" name="Nacimiento" value="<%=listado.getString("Nacimiento")%>">
                        <input type="hidden" name="Direccion" value="<%=listado.getString("Direccion")%>">
                        <input type="hidden" name="Telefono" value="<%=listado.getString("Telefono")%>">
                        <input type="hidden" name="Mail" value="<%=listado.getString("Mail")%>">
                        <input class="button3" type="submit" value="Modificar">
                    </form>
                </td>
                <%
                    } //while
                    conexion.close();
                %>
                </tr>
                </tbody>
                </font>
            </table>
        </div>
    </body>
</html>