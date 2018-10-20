<%-- 
    Document   : excluirEmpresa
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
        <title>Grupo 1 - Excluir Empresa</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Excluir Empresa </h1>
        </div>
        
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Empresa e = ArrayEmpresa.getEmpresas().get(i);
            if(request.getParameter("excluir")!=null){
              ArrayEmpresa.getEmpresas().remove(i);
              response.sendRedirect("listarEmpresa.jsp");
        }
        %>
        <form class="container">
            <center><b>Índice: <%=i%></b></center><br/>
            <div class="form-row">                 
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome</label>
                  <input type="text" disabled class="form-control" name="nome" value="<%=e.getNome()%>" />
                </div>

                <div class="form-group col-md-6">
                  <label for="inputRazaoSocial">Razão Social</label>
                  <input type="text" disabled class="form-control" name="razaoSocial" value="<%=e.getRazaoSocial()%>" />
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputCNPJ">CNPJ</label>
                  <input type="text" disabled class="form-control" name="cnpj" value="<%=e.getCnpj()%>" />
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputTelefone">Telefone</label>
                  <input type="text" disabled class="form-control" name="telefone" value="<%=e.getTelefone()%>" />
                </div>
                
                <div class="form-group col-md-12">
                  <label for="inputWebsite">Website</label>
                  <input type="text" disabled class="form-control" name="website" value="<%=e.getWebsite()%>" />
                </div>
            </div> 
            <div class="form-group">
                  <input type="hidden" class="form-control" name="i" value="<%=i%>" />
            </div>
            <center>
                <input type="submit" class="btn btn-dark" name="excluir" value="Confirmar exclusão"/>
                <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
            </center>
            <br>
         </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
