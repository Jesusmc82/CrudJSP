<%-- 
    Document   : Embarazos
    Created on : 15-mar-2018, 9:07:02
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
        <title>Embarazos</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <h3>Embarazos</h3>
            <a href=index.jsp><button class="button2" width="80%">Pagina Principal</button></a>

            <table class="table" border="3" bordercolor="blue">
                <thead style="background-color: white; opacity: .70">
                    <tr style="background-color: white; opacity: .70">
                        <th>FPP</th><th>NHC</th><th>Pruebas</th><th>Colegiado</th>
                    </tr>
                </thead>
                <tbody style="background-color: white; opacity: .50">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                        Statement s = conexion.createStatement();

                        ResultSet listado = s.executeQuery("Select * FROM Embarazos");

                        while (listado.next()) {
                            out.println("<tr>");
                            out.println("<td>" + listado.getString("FPP") + "</td>");
                            out.println("<td>" + listado.getString("NHC") + "</td>");
                            out.println("<td>" + listado.getString("Pruebas_Diagnosticas") + "</td>");
                            out.println("<td>" + listado.getString("Numero_Colegiado") + "</td>");
                    %>
                <td>
                    <form action="Embarazos.jsp">
                        <input type="hidden" name="ID_Embarazos" value="<%=listado.getString("ID_Embarazos")%>" />
                        <button type='submit' class='btn btn-danger' title="Borrar"><span class="glyphicon glyphicon-remove-sign"></span></button>
                    </form>
                    <form method="get" action="Embarazos.jsp">
                        <input type="hidden" name="FPP" value="<%=listado.getString("FPP")%>"/>
                        <input type="hidden" name="NHC" value="<%=listado.getString("NHC")%>">
                        <input type="hidden" name="Pruebas_Diagnosticas" value="<%=listado.getString("Pruebas_Diagnosticas")%>">
                        <input type="hidden" name="Numero_Colegiado" value="<%=listado.getString("Numero_Colegiado")%>">
                        <button type='submit' class='btn btn-warning' title="Editar"><span class="glyphicon glyphicon-edit"></span></button>
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