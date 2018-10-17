<%-- 
    Document   : alterarPessoa
    Created on : 12/10/2018, 20:31:52
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
        <div class="text-center " > 
            <h1>Alterar dados da Pessoa</h1>
            <%
                int i = Integer.parseInt(request.getParameter("i"));
                Pessoa p = ArrayPessoa.getPessoas().get(i);
                if (request.getParameter("alterar") != null) {
                    String nome = request.getParameter("nome");
                    String cpf = request.getParameter("cpf");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    p.setDados(nome, cpf, email, telefone);
                    ArrayPessoa.getPessoas().set(i, p);
                    response.sendRedirect("listarPessoa.jsp");
                }
            %>
            <form>
                <b>Índice: <%= i%></b><br/>
                <input type="hidden" name="i" value="<%=i%>"/>
                <div class="form-group">
                    <label>Nome:</label></br>
                    <input type="text" name="nome" value="<%=p.getNome()%>"/><br/>
                </div>
                <div class="form-group">
                    <label>Cpf:</label></br>
                    <input type="text" name="cpf" value="<%=p.getCpf()%>"/><br/>
                </div>
                <div class="form-group">
                    <label>Email:</label></br>
                    <input type="text" name="email" value="<%=p.getEmail()%>"/><br/>
                </div>
                <div class="form-group">
                    <label>Telefone:</label></br>
                    <input type="text" name="telefone" value="<%=p.getTelefone()%>"/><br/>
                </div>
                <br/>
                <input type="submit" name="alterar" value="Alterar"/>            
            </form>
        </div>
    </body>
</html>
