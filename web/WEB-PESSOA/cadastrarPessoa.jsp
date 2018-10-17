<%-- 
    Document   : cadastrarPessoa
    Created on : 12/10/2018, 20:31:37
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
            <h1>Cadastro de Veículos</h1>
            <%
                if (request.getParameter("cadastrar") != null) {
                    String nome = request.getParameter("nome");
                    String cpf = request.getParameter("cpf");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    Pessoa p = new Pessoa();
                    p.setDados(nome, cpf, email, telefone);
                    ArrayPessoa.getPessoas().add(p);
                    response.sendRedirect("listarPessoa.jsp");
                }
            %>
            <form>
                <div class="form-group">
                    <label>Nome:</label></br>  
                    <input type="text" name="nome" required/><br/>
                </div>

                <div class="form-group">
                    <label>CPF</label></br>
                    <input type="text" name="cpf" pattern="[0-9]+$" required/><br/>
                </div>

                <div class="form-group">
                    <label>Email:</label></br>
                    <input type="text" name="email" required/><br/>
                </div>

                <div class="form-group">
                    <label>Telefone</label></br>
                    <input type="text" name="telefone" pattern="[0-9]+$" required/><br/>
                    <br/>
                </div>
                <input class="btn btn-dark" type="submit" name="cadastrar" value="Cadastrar"/>            
            </form>
        </div>
    </body>
</html>
