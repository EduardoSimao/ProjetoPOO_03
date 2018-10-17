<%-- 
    Document   : excluirPessoa
    Created on : 12/10/2018, 20:32:09
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
            <h1>Excluir Pessoa</h1>
            <%
                int i = Integer.parseInt(request.getParameter("i"));
                Pessoa p = ArrayPessoa.getPessoas().get(i);
                if (request.getParameter("excluir") != null) {
                    ArrayPessoa.getPessoas().remove(i);
                    response.sendRedirect("listarPessoa.jsp");
                }
            %>
            <form>
                Índice: </br>
                <b><%= i%></b><br/>
                <input type="hidden" name="i" value="<%=i%>"/>
                Placa: <br/>
                <b><%=p.getNome()%>"</b><br/>
                Marca: <br/>
                <b><%=p.getCpf()%>"</b><br/>
                Modelo: <br/>
                <b><%=p.getEmail()%>"</b><br/>
                Cor: <br/>
                <b><%=p.getTelefone()%>"</b><br/>
                <br/>
                <input type="submit" name="excluir" value="Confirmar exclusão"/>            
            </form>
        </div>
    </body>
</html>
