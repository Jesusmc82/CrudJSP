<%-- 
    Document   : HistorialClinico
    Created on : 14-mar-2018, 0:09:17
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
        <title>Historial Clinico</title>
        <link REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg1">
            <h1>MisMatronas.com</h1>
            <h3>Historial Clinico</h3>
            <a href=index.jsp><button class="button2" width="80%">Pagina Principal</button></a>

            <table class="table" border="3" bordercolor="blue">
                <thead>
                    <tr style="background-color: white; opacity: .70">
                        <th>NHC</th><th>Evolución</th><th>DNI</th><th>Observaciones</th>
                    </tr>
                </thead>
                <tbody style="background-color: white; opacity: .70">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                        Statement s = conexion.createStatement();

                        ResultSet listado = s.executeQuery("Select * FROM Historial_Clinico");

                        while (listado.next()) {
                            out.println("<tr>");
                            out.println("<td>" + listado.getString("NHC") + "</td>");
                            out.println("<td>" + listado.getString("Evolucion") + "</td>");
                            out.println("<td>" + listado.getString("DNI") + "</td>");
                            out.println("<td>" + listado.getString("Observaciones") + "</td>");
                    %>
                <td>
                    <form method="get" action="BorraHistorial.jsp">
                        <input type="hidden" name="NHC" value="<%=listado.getString("NHC")%>"/>
                        <input class="button3" type="submit" value="Borrar">
                    </form>
                    <form method="get" action="modificaUsuaria.jsp">
                        <input type="hidden" name="NHC" value="<%=listado.getString("NHC")%>">
                        <input type="hidden" name="Evolucion" value="<%=listado.getString("Evolucion")%>">
                        <input type="hidden" name="DNI" value="<%=listado.getString("DNI")%>">
                        <input type="hidden" name="Observaciones" value="<%=listado.getString("Observaciones")%>">
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