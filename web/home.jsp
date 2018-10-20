<%-- 
    Document   : home
    Created on : 12/10/2018, 20:37:53
    Author     : Positivo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/links.jspf" %>
        
        <title>Início - Grupo 01</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="WEB-INF/menu.jspf"%>
       
      
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<div id="header-featured"> </div>

<div id="wrapper">
  <div id="featured-wrapper">
    <div id="featured" class="container">
      <div class="column1"> <span class="icon icon-cogs"></span>
        <div class="title">
          <h2>Sidney de Almeida Fernandes</h2>
        </div>
        <p>Criar CRUD da Pessoa.</p>
      </div>
      <div class="column2"> <span class="icon icon-folder-close-alt"></span>
        <div class="title">
          <h2>Moisés Santana Silveira</h2>
        </div>
        <p>Home, CSS e Footer.</p>
      </div>
      <div class="column3"> <span class="icon icon-group"></span>
        <div class="title">
          <h2>Eduardo Francisco de Jesus Simao</h2>
        </div>
          <p>Criar CRUD da Empresa, NavBar, CSS.</p>
      </div>
         <div class="column5"> <span class="icon icon-bar-chart"></span>
        <div class="title">
          <h2>Carlos Alberto da Silva</h2>
        </div>
        <p>Criar CRUD do Veiculo.</p>
      </div>
        <div class="column6"> <span class="icon icon-wrench"></span>
        <div class="title">
          <h2>Julio Cesar Yukishigue Takeda</h2>
        </div>
        <p>Criar CRUD da Empresa.</p>
      </div>
    </div>
  </div>
  <div id="extra" class="container">
    <h2>TP-03 Professor Pupo</h2>
    <span>Fatec Centro Paula Souza</span> 
    <p>Esta apricação tem como finalidade executar o cadastro de Pessoas,Empresas e Veiculos. Assim como a manutenção dos mesmos(Excluir,Adicionar e Editar)</p>

    <a href="https://github.com/EduardoSimao/ProjetoPOO_03" class="button">Git-Hub</a> </div>
</div>


     <%@include  file="WEB-INF/footer.jspf"%>
   
    </body>
   
</html> 
