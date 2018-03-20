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
        <title>Modifica Usuaria</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <a href=../index.jsp><button class="button2">Pagina Principal</button></a>
            <a href=Usuaria.jsp><button class="button2">Usuaria</button></a>
            <% request.setCharacterEncoding("UTF-8");%>
            <h3>Modificación Usuaria</h3>
            <div clas="container">
                <div clas="row">
                    <form method="get" action="UsuariaModificada.jsp">
                        <div class="col-md-10 col-md-offset-10">
                            <div class="form-group"> 
                                <label>DNI</label><input type="text" size="12" name="DNI" value="<%= request.getParameter("DNI")%>" readonly>
                            </div>
                            <div class="form-group">
                                <label>Nombre</label><input type="text" size="35" name="Nombre" value="<%= request.getParameter("Nombre")%>">
                            </div>
                            <div class="form-group">
                                <label>Apellidos</label><input type="text" size="35" name="Apellidos" value="<%= request.getParameter("Apellidos")%>">
                            </div>
                            <div class="form-group">
                                <label>Nacimiento </label><input type="date" class="form-control" size="12" name="Nacimiento" value="<%= request.getParameter("Nacimiento")%>" >
                            </div>
                            <div class="form-group">
                                <label>Dirección </label><input type="text" name="Direccion" size="40" value="<%= request.getParameter("Direccion")%>">
                            </div>
                            <div class="form-group">
                                <label>Teléfono </label><input type="text" name="Telefono" size="12" value="<%= request.getParameter("Telefono")%>">
                            </div>
                            <div class="form-group">
                                <label>Mail </label><input type="text" name="Mail" size="40" value="<%= request.getParameter("Mail")%>">
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
