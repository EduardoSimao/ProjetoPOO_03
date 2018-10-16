<%-- 
    Document   : cadastarVeiculo
    Created on : 12/10/2018, 20:34:14
    Author     : Positivo
--%>
<%@page import="br.com.fatecpg.web.ArrayVeiculo"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="text-center " >      
            <h1>Cadastro de Veículos</h1>
            <%
                if (request.getParameter("cadastrar") != null) {
                    String placa = request.getParameter("placa");
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String cor = request.getParameter("cor");
                    Veiculo v = new Veiculo();
                    v.setDados(placa, marca, modelo, cor);
                    ArrayVeiculo.getVeiculos().add(v);
                    response.sendRedirect("listarVeiculo.jsp");
                }
            %>
            <form>
                <div class="form-group">
                    <label>Placa:</label></br>  
                    <input type="text" name="placa"/><br/>
                </div>

                <div class="form-group">
                    <label>Marca:</label></br>
                    <input type="text" name="marca"/><br/>
                </div>

                <div class="form-group">
                    <label>Modelo:</label></br>
                    <input type="text" name="modelo"/><br/>
                </div>

                <div class="form-group">
                    <label>Cor:</label></br>
                    <input type="text" name="cor"/><br/>
                    <br/>
                </div>
                <input class="btn btn-dark" type="submit" name="cadastrar" value="Cadastrar"/>            
            </form>
        </div>
    </body>
</html>
