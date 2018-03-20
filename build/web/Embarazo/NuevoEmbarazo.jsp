<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link REL=StyleSheet HREF="../style.css" TYPE="text/css" MEDIA=screen>
        <title>Nuevo Embarazo</title>
        <script type="text/javascript" src="scripts.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <h3>Agregue datos sobre el embarazo:</h3>
            <a href=../index.jsp><button class="button2" width="80%">Pagina Principal</button></a>
            <div class="container">
                <div class="row">
                    <form method="get" action="AgregaEmbarazo.jsp">
                        <div class="col-md-10 col-md-offset-10">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">Embarazo</span>
                                    <input type="text" name="ID_Embarazos" class="form-control" placeholder="" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">FPP</span>
                                    <input type="date" name="FPP" class="form-control" placeholder="" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <p>NHC</p>
                                    <select class="form-control">
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                                            Statement s = conexion.createStatement();

                                            ResultSet lista = s.executeQuery("Select * FROM Historial_Clinico");

                                            while (lista.next()) {
                                                out.println("<option value=" + lista.getString("NHC") + ">" + lista.getString("NHC") + "</option>");
                                            }
                                        %>
                                    </select>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">Pruebas Diagnosticas</span>
                                    <input type="text" name="Pruebas_Diagnosticas" class="form-control" placeholder="" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <p>Profesional</p>
                                    <select class="form-control">
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver");

                                            ResultSet listado = s.executeQuery("Select * FROM Profesional");

                                            while (listado.next()) {
                                                out.println("<option value=" + listado.getString("Numero_Colegiado") + ">" + listado.getString("Nombre") + "</option>");
                                            }
                                        %>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-success">Aceptar</button>
                                <button type="button" class="btn btn-danger" onclick="cancelar()">Cancelar</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

