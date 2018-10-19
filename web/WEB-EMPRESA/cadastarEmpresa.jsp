<%-- 
    Document   : cadastarEmpresa
    Created on : 14/10/2018
    Author     : Julio
--%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page import="br.com.fatecpg.web.ArrayEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page </title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Empresa </h1>
        </div>
        
         <%
            if(request.getParameter("inserir")!=null){
            String nome = request.getParameter("nome");
            String razaoSocial = request.getParameter("razaoSocial");
            String Cnpj = request.getParameter("cnpj");
            String telefone = request.getParameter("telefone");
            String Website= request.getParameter("website");
            Empresa e = new Empresa();
            e.setDados(nome, razaoSocial, Cnpj ,telefone,Website );
            ArrayEmpresa.getEmpresas().add(e);
            response.sendRedirect("listarEmpresa.jsp");
        }
        %>        
        <form class="container">
            <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome</label>
                  <input type="text" class="form-control" name="nome" placeholder="Nome">
                </div>

                <div class="form-group col-md-6">
                  <label for="inputRazaoSocial">Razão Social</label>
                  <input type="text" class="form-control" name="razaoSocial" placeholder="Razão Social">
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputCNPJ">CNPJ</label>
                  <input type="text" class="form-control" name="cnpj" placeholder="CNPJ">
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputTelefone">Telefone</label>
                  <input type="text" class="form-control" name="telefone" placeholder="Telefone">
                </div>
                
                <div class="form-group col-md-12">
                  <label for="inputWebsite">Website</label>
                  <input type="text" class="form-control" name="website" placeholder="website">
                </div>
            </div> 
                <center>
                    <button type="submit" class="btn btn-dark" name="inserir">Cadastrar</button>
                    <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>
          </form>
    </body>
</html>
