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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="text-center " > 
        <h1>Excluir Empresa</h1>
        
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Empresa e = ArrayEmpresa.getEmpresas().get(i);
            if(request.getParameter("excluir")!=null){
              ArrayEmpresa.getEmpresas().remove(i);
              response.sendRedirect("listarEmpresa.jsp");
        }
        %>
        <form>
            Índice: </br>
            <b><%= i %></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome: <br/>
            <b><%=e.getNome()%>"</b><br/>
            Razao Social: <br/>
            <b><%=e.getRazaoSocial()%>"</b><br/>
            Cnpj: <br/>
            <b><%=e.getCnpj()%>"</b><br/>
            Email: <br/>
            <b><%=e.getTelefone()%>"</b><br/>
            Email: <br/>
            <b><%=e.getWebsite()%>"</b><br/>
            <br/>
            <input type="submit" name="excluir" value="Confirmar exclusão"/>            
        </form>
    </body>
</html>
