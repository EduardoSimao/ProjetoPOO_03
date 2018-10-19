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
        <div class="text-center " ></div>
        <h1>Empresas</h1>
        
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
        <form>
                
            Nome: <br/>
            <input type="text" name="nome"/><br/>
            Razão Social: <br/>
            <input type="text" name="razaoSocial"/><br/>
            Cnpj: <br/>
            <input type="text" name="cnpj"/><br/>
            Telefone: <br/>
            <input type="text" name="telefone"/><br/>
            website: <br/>
            <input type="text" name="website"/><br/>
            <br/>
            <input type="submit" name="inserir" value="Cadastrar"/> 
         
        </form>
    </body>
</html>
