<%-- 
    Document   : listarVeiculo
    Created on : 12/10/2018, 20:34:42
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
        <title>Grupo 1 - Listar Veículos</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Veículos </h1>
        </div>
        
        <div class="container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Placa</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Cor</th>
                        <th>Comandos</th>

                    </tr>
                </thead>
                <%for (Veiculo v : ArrayVeiculo.getVeiculos()) {%>
                <%int i = ArrayVeiculo.getVeiculos().indexOf(v);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=v.getPlaca()%></td>
                    <td><%=v.getMarca()%></td>
                    <td><%=v.getModelo()%></td>
                    <td><%=v.getCor()%></td>
                    <td>
                        <a href="alterarVeiculo.jsp?i=<%=i%>"><button type="button" class="btn btn-light">Alterar</button></a>
                        <a href="excluirVeiculo.jsp?i=<%=i%>"><button type="button" class="btn btn-dark">Excluir</button></a>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
    <%@include file="../WEB-INF/footer.jspf" %>
</html>
