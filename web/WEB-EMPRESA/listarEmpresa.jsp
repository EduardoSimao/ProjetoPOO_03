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
        <title>Empresa - Listar</title>
    </head>
    <body>
        <%@include file="/WEB-INF/menu.jspf" %>
        
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Razão Social</th>
                    <th scope="col">CNPJ</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Website</th>
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
                </tr>
                <tr>
            </tbody>
            <%}%>
          </table>
        
    </body>
</html>
