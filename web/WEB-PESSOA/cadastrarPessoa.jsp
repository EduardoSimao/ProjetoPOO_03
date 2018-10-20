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
        <title>Grupo 1 - Cadastrar Pessoa</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Pessoa </h1>
        </div>
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
            <form class="container">
            <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome</label>
                  <input type="text" class="form-control" name="nome" placeholder="Nome">
                </div>

                <div class="form-group col-md-6">
                  <label for="inputCPF">CPF</label>
                  <input type="text" class="form-control" name="cpf" placeholder="CPF">
                </div>
                                
                <div class="form-group col-md-6">
                  <label for="inputTelefone">Telefone</label>
                  <input type="text" class="form-control" name="telefone" placeholder="Telefone">
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputEmail">E-mail</label>
                  <input type="email" class="form-control" name="email" placeholder="E-mail">
                </div>
            </div> 
         
            <center>
                <button type="submit" class="btn btn-dark" name="cadastrar">Cadastrar</button>
                <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
            </center>       
                <br>
          </form>
    </body>
    <%@include file="../WEB-INF/footer.jspf" %>
</html>
