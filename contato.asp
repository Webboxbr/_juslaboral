<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Webbox">

	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">  
  <!--[if IE ]><style type="text/css">label {display:block;}</style><![endif]-->

	<link rel="stylesheet" type="text/css" href="bxslider/jquery.bxslider.css">	

	<!-- Fav and touch icons -->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">

	<meta name="application-name" content="Juslaboral"/>

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

 	<title>Juslaboral</title>

</head>
<body> 

<!-- facebook Caixa Curtir /-->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&appId=332361930233010&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

 	<!--#include file="_includes/_header.asp" -->

 	
 	<section id="conteudo" class="internas">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-12">
 					<h2 class="cinza"><span id="ico25"></span>Contato</h2>
 					<p>UT ENIM AD MINIM VENIAM, ULLAMCO LABORIS  EX EA COMMODO CONSEQUAT.</p>
 					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
 				</div>				
 			</div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6">
          <div style="height:40px"></div>
          <form role="form" action="">
            <div class="form-group">
              <label for="nome">Digite seu nome *</label>
              <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome *">
            </div>
            <div class="form-group">
              <label for="email">Seu e-mail *</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="Seu e-mail *">
            </div>
            <div class="form-group">
              <label for="telefone">Seu Telefone</label>
              <input type="tel" class="form-control" id="telefone" name="telefone" placeholder="Seu Telefone">
            </div>
            <div class="form-group">
              <label for="texto">Informações que deseja</label>
              <textarea class="form-control" id="texto" name="texto" rows="3">Informações que deseja</textarea>
            </div>
            <small>* Preenchimento obrigatório</small><br>

            <button type="submit" class="btn btn-vermelho">Enviar</button>        
            
          </form>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
          <div class="centraliza">
            <h3><span id="ico26"></span>Depoimentos</h3>
            <p class="dep-texto">Confira o depoimento de quem já participou do curso</p>
            <div class="botao it t15" data-toggle="modal" data-target="#myModal">                        
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
              <p><b>Aline Mello- DF</b></p>
            </div>
          </div>
        </div>
      </div>		
 		</div>
 	</section> <!-- conteudo /-->
 	
 	
 	<!--#include file="_includes/_rodape.asp" -->


<!-- Modal /-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Aline Mello- DF</h4>
      </div>
      <div class="modal-body">
          <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3"><img src="images/foto_dep_1.png" alt=""></div>
            <div class="col-xs-12 col-sm-9 col-md-9">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><b>Aline Mello- DF</b></p>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-amarelo" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>    


<!-- início do javascript /-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript"> 

  $('#myModal').on('hidden.bs.modal', function (e) {
      // do something...
  })

</script>

</body>
</html>