<%-- 
    Document   : excluirVeiculo
    Created on : 12/10/2018, 20:35:55
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
            <h1 class="display-4"> Excluir Veículo </h1>
        </div> 
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Veiculo v = ArrayVeiculo.getVeiculos().get(i);
            if (request.getParameter("excluir") != null) {
                ArrayVeiculo.getVeiculos().remove(i);
                response.sendRedirect("listarVeiculo.jsp");
            }
        %>

        <form class="container">

            <center><b>Índice: <%=i%></b></center><br/>

            <div class="form-row"> 

                <div class="form-group col-md-6">
                    <label>Placa</label>
                    <input type="text" disabled class="form-control" name="placa" value="<%=v.getPlaca()%>" />
                </div>

                <div class="form-group col-md-6">
                    <label>Marca</label>
                    <input type="text" disabled class="form-control" name="marca"  value="<%=v.getMarca()%>" />
                </div>

                <div class="form-group col-md-6">
                    <label> Modelo</label>
                    <input type="text" disabled class="form-control" name="modelo" value="<%=v.getModelo()%>" />
                </div>

                <div class="form-group col-md-6">
                    <label>Cor</label>
                    <input type="text" disabled class="form-control" name="cor" value="<%=v.getCor()%>" />
                </div>
            </div> 
            <div class="form-group">
                <input type="hidden" class="form-control" name="i" value="<%=i%>" />
            </div>
            <center>
                <input type="submit" class="btn btn-dark" name="excluir" value="Confirmar exclusão"/>
                <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
            </center>           
        </form>
    </body>
</html>
