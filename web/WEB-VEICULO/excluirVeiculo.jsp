<%-- 
    Document   : excluirVeiculo
    Created on : 12/10/2018, 20:35:55
    Author     : Positivo
--%>
<%@page import="br.com.fatecpg.web.ArrayVeiculo"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
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
            <h1>Excluir Veiculos</h1>
            <%
                int i = Integer.parseInt(request.getParameter("i"));
                Veiculo v = ArrayVeiculo.getVeiculos().get(i);
                if (request.getParameter("excluir") != null) {
                    ArrayVeiculo.getVeiculos().remove(i);
                    response.sendRedirect("listarVeiculo.jsp");
                }
            %>
            <form>
                Índice: </br>
                <b><%= i%></b><br/>
                <input type="hidden" name="i" value="<%=i%>"/>
                Placa: <br/>
                <b><%=v.getPlaca()%>"</b><br/>
                Marca: <br/>
                <b><%=v.getMarca()%>"</b><br/>
                Modelo: <br/>
                <b><%=v.getModelo()%>"</b><br/>
                Cor: <br/>
                <b><%=v.getCor()%>"</b><br/>
                <br/>
                <input type="submit" name="excluir" value="Confirmar exclusão"/>            
            </form>
        </div>
    </body>
</html>
