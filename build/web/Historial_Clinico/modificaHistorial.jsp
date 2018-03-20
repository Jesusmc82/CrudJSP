<%-- 
    Document   : modificaUsuaria
    Created on : 16-mar-2018, 18:31:42
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
        <link REL="StyleSheet" HREF="../style.css" TYPE="text/css" MEDIA="screen">
        <title>Modifica Historial</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <a href=../index.jsp><button class="button2">Pagina Principal</button></a>
            <a href=HistorialClinico.jsp><button class="button2">Historial Clinico</button></a>
            <% request.setCharacterEncoding("UTF-8");%>
            <h3>Modificación Historial</h3>
            <div clas="container">
                <div clas="row">
                    <form method="get" action="HistorialModificado.jsp">
                        <div class="col-md-10 col-md-offset-10">
                            <div class="form-group"> 
                                <label>NHC</label><input type="text" size="12" name="NHC" value="<%= request.getParameter("NHC")%>" readonly>
                            </div>
                            <div class="form-group">
                                <label>Evolución</label><input type="text" size="12" name="Evolucion" value="<%= request.getParameter("Evolucion")%>">
                            </div>
                            <div class="form-group">
                                <label>DNI</label><input type="text" size="15" name="DNI" value="<%= request.getParameter("DNI")%>">
                            </div>
                            <div class="form-group">
                                <label>Observaciones</label><input type="text" size="35" name="Observaciones" value="<%= request.getParameter("Observaciones")%>">
                            </div>
                            <button type="submit" class="btn btn-success">Aceptar</button>
                            <button type="button" class="btn btn-danger" onclick="cancelar()">Cancelar</button>
                            <div class="text-center">&copy; Jesús Martín Castro</div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </body>
</html>