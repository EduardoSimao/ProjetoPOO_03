<%-- 
    Document   : alterarEmpresa
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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="text-center " > 
        <h1>Alterar Empresas</h1>
        
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Empresa e = ArrayEmpresa.getEmpresas().get(i);
            if(request.getParameter("alterar")!=null){
              String nome = request.getParameter("nome");
              String razaoSocial = request.getParameter("razaoSocial");
              String Cnpj = request.getParameter("cnpj");
              String telefone = request.getParameter("telefone");
              String Website= request.getParameter("website");
              e.setDados(nome,razaoSocial,Cnpj, telefone , Website );
              ArrayEmpresa.getEmpresas().set(i,e);
              response.sendRedirect("listarEmpresa.jsp");
        }
        %>
        <form>
            <b>Índice: <%= i %></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome: <br/>
            <input type="text" name="nome" value="<%=e.getNome()%>"/><br/>
            Razão Social: <br/>
            <input type="text" name="razaoSocial" value="<%=e.getRazaoSocial()%>"/><br/>
            CNPJ: <br/>
            <input type="text" name="cnpj" value="<%=e.getCnpj()%>"/><br/>
            Telefone: <br/>
            <input type="text" name="telefone" value="<%=e.getTelefone()%>"/><br/>
            Website: <br/>
            <input type="text" name="website" value="<%=e.getWebsite()%>"/><br/>
            <br/>
            <input type="submit" name="alterar" value="Alterar"/>            
        </form>
    </body>
</html>
