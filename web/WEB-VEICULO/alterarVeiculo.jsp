<%-- 
    Document   : alterarVeiculo
    Created on : 12/10/2018, 20:34:28
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
            <h1>Alterar dados do Veiculo</h1>
            <%
                int i = Integer.parseInt(request.getParameter("i"));
                Veiculo v = ArrayVeiculo.getVeiculos().get(i);
                if (request.getParameter("alterar") != null) {
                    String placa = request.getParameter("placa");
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String cor = request.getParameter("cor");
                    v.setDados(placa, marca, modelo, cor);
                    ArrayVeiculo.getVeiculos().set(i, v);
                    response.sendRedirect("listarVeiculo.jsp");
                }
            %>
            <form>
                <b>Índice: <%= i%></b><br/>
                <input type="hidden" name="i" value="<%=i%>"/>
                <div class="form-group">
                    <label>Placa:</label></br>
                    <input type="text" name="placa" value="<%=v.getPlaca()%>"/><br/>
                </div>
                <div class="form-group">
                    <label>Marca:</label></br>
                    <input type="text" name="marca" value="<%=v.getMarca()%>"/><br/>
                </div>
                <div class="form-group">
                    <label>Modelo:</label></br>
                    <input type="text" name="modelo" value="<%=v.getModelo()%>"/><br/>
                </div>
                <div class="form-group">
                    <label>Cor:</label></br>
                    <input type="text" name="cor" value="<%=v.getCor()%>"/><br/>
                </div>
                <br/>
                <input type="submit" name="alterar" value="Alterar"/>            
            </form>
        </div>
    </body>
</html>
