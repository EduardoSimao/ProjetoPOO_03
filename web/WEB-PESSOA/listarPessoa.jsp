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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <h1>Lista de Pessoas</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Cpf</th>
                    <th>Email</th>
                    <th>Telefone</th>
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
                    <a href="alterarPessoa.jsp?i=<%=i%>"><button>Alterar</button></a>
                    <a href="excluirPessoa.jsp?i=<%=i%>"><button>Excluir</button></a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
