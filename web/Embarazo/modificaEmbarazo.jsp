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
        <title>Modifica Embarazos</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <a href=../index.jsp><button class="button2">Pagina Principal</button></a>
            <a href=Embarazos.jsp><button class="button2">Embarazos</button></a>
            <% request.setCharacterEncoding("UTF-8");%>
            <h3>Modificación Profesional</h3>
            <div clas="container">
                <div clas="row">
                    <form method="get" action="EmbarazoModificado.jsp">
                        <div class="col-md-10 col-md-offset-10">
                            <div class="form-group"> 
                                <label>Embarazo</label><input type="text" size="12" name="ID_Embarazos" value="<%= request.getParameter("ID_Embarazos")%>" readonly>
                            </div>
                            <div class="form-group">
                                <label>Fecha Prevista Parto</label><input type="date" size="12" name="FPP" value="<%= request.getParameter("FPP")%>">
                            </div>
                            <div class="form-group">
                                <label>NHC</label><input type="text" size="15" name="NHC" value="<%= request.getParameter("NHC")%>" readonly>
                            </div>
                            <div class="form-group">
                                <label>Pruebas</label><input type="text" size="25" name="Pruebas_Diagnosticas" value="<%= request.getParameter("Pruebas_Diagnosticas")%>">
                            </div>
                            <div class="form-group">
                                <label>Colegiado</label><input type="text" size="15" name="Numero_Colegiado" value="<%= request.getParameter("Numero_Colegiado")%>" readonly>
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