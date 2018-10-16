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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <h1>Lista de Veiculos</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Placa</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Cor</th>
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
                    <a href="alterarVeiculo.jsp?i=<%=i%>"><button>Alterar</button></a>
                    <a href="excluirVeiculo.jsp?i=<%=i%>"><button>Excluir</button></a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
