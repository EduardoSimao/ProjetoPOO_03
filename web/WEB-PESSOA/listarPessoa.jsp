<%-- 
    Document   : listarPessoa
    Created on : 12/10/2018, 20:36:14
    Author     : Positivo
--%>

<%@page import="br.com.fatecpg.web.ArrayPessoa"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 1 - Listar Pessoas</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Pessoas </h1>
        </div>
        
        <div class="container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Cpf</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Comandos</th>
                    </tr>
                </thead>
                <%for (Pessoa p : ArrayPessoa.getPessoas()) {%>
                <%int i = ArrayPessoa.getPessoas().indexOf(p);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=p.getNome()%></td>
                    <td><%=p.getCpf()%></td>
                    <td><%=p.getEmail()%></td>
                    <td><%=p.getTelefone()%></td>
                    <td>
                        <a href="alterarPessoa.jsp?i=<%=i%>"><button type="button" class="btn btn-light">Alterar</button></a>
                        <a href="excluirPessoa.jsp?i=<%=i%>"><button type="button" class="btn btn-dark">Excluir</button></a>
                    </td>
                </tr>
                <%}%>
            </table><br>
        </div>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
