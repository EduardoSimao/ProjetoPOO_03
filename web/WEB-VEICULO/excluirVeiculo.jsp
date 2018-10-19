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
                <div class="form-group">
                <label><b>Índice: <%= i%></b> </label></br>
                <input type="hidden" name="i" value="<%=i%>"/>
                </div>
                <div class="form-group">
                    <label>Placa:</label></br>
                    <input type="text" disabled name="placa" value="<%=v.getPlaca()%>"/><br/>
                </div> 
                <div class="form-group">
                    <label>Marca:</label></br>
                    <input type="text"  disabled name="marca" value="<%=v.getMarca()%>"/><br/>
                </div>  
                <div class="form-group">
                    <label>Modelo:</label></br>
                    <input type="text" disabled name="modelo" value="<%=v.getModelo()%>"/><br/>
                </div> 
                <div class="form-group">
                    <label>Cor:</label></br>
                    <input type="text" disabled name="cor" value="<%=v.getCor()%>"/><br/>
                </div>
                <br/>
                <input type="submit" name="excluir" value="Confirmar exclusão"/>            
            </form>
        </div>
    </body>
</html>
