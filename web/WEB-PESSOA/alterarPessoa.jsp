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
        <title>Grupo 1 - Alterar Pessoa</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Alterar Pessoa </h1>
        </div>
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
            
            <form class="container">
                
                <center><b>Índice: <%=i%></b></center><br/>

                <div class="form-row"> 

                    <div class="form-group col-md-6">
                      <label for="inputNome">Nome</label>
                      <input type="text" class="form-control" name="nome" value="<%=p.getNome()%>" />
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputCPF">CPF</label>
                      <input type="text" class="form-control" name="cpf"  value="<%=p.getCpf()%>" />
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputTelefone">Telefone</label>
                      <input type="text" class="form-control" name="telefone" value="<%=p.getTelefone()%>" />
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputEmail">E-mail</label>
                      <input type="text" class="form-control" name="email" value="<%=p.getEmail()%>" />
                    </div>
                </div> 
                <div class="form-group">
                      <input type="hidden" class="form-control" name="i" value="<%=i%>" />
                </div>
                <center>
                    <input type="submit" class="btn btn-dark" name="alterar" value="Alterar" />
                    <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>           
          </form>
                <br>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
