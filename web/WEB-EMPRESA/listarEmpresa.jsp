<%-- 
    Document   : listarEmpresa
    Created on : 12/10/2018, 20:33:41
    Author     : Positivo
--%>

<%@page import="br.com.fatecpg.web.ArrayEmpresa"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/WEB-INF/links.jspf" %>
        <title>Grupo 1 - Listar Empresas</title>
    </head>
    <body>
        <%@include file="/WEB-INF/menu.jspf" %>
        
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Empresas </h1>
        </div>
        <div class="container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Razão Social</th>
                        <th scope="col">CNPJ</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Website</th>
                        <th scope='col'>Comandos</th>
                    </tr>
                </thead>

                <%for(Empresa empresa: ArrayEmpresa.getEmpresas()){
                    int cont = ArrayEmpresa.getEmpresas().indexOf(empresa);%>

                <tbody>
                    <tr>
                        <th scope="row"><%=cont%></th>
                        <td><%=empresa.getNome()%></td>
                        <td><%=empresa.getRazaoSocial()%></td>
                        <td><%=empresa.getCnpj()%></td>
                        <td><%=empresa.getTelefone()%></td>
                        <td><%=empresa.getWebsite()%></td>
                        <td>
                            <a href="alterarEmpresa.jsp?i=<%=cont%>"><button type="button" class="btn btn-light">Alterar</button></a>
                            <a href="excluirEmpresa.jsp?i=<%=cont%>"><button type="button" class="btn btn-dark">Excluir</button></a>
                        </td>
                    </tr>
                    <tr>
                </tbody>
                <%}%>
            </table>
        </div>
    </body>
    <%@include file="../WEB-INF/footer.jspf" %>
</html>
