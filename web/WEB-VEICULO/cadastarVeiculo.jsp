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
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Veículo </h1>
        </div> 
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
            
            <form class="container">
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputPlaca">Placa</label>
                      <input type="text" class="form-control" name="placa" placeholder="Placa">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputMarca">Marca</label>
                      <input type="text" class="form-control" name="marca" placeholder="Marca">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputModelo">Modelo</label>
                      <input type="text" class="form-control" name="modelo" placeholder="Modelo">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputCor">Cor</label>
                      <input type="text" class="form-control" name="cor" placeholder="Cor">
                    </div>                
                </div> 
                <center>
                    <button type="submit" class="btn btn-dark" name="cadastrar">Cadastrar</button>
                    <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>
          </form>
    </body>
</html>
