<!--#include file="admin/conexao.asp" -->
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Conteúdos práticos e esclarecedores, com disciplinas que integram-se entre si visando a aprovação.">
    <meta name="keywords" content="Cursos Juslaboral, curso Juslaboral, curso Magistério, curso Magistratura, cursos Magistério, cursos Magistratura, cursos preparação Magistratura, cursos preparação Magistério, curso preparação Magistério, curso preparação magistratura. ">
    <meta name="author" content="Webbox">

	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

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

 	<title>Cursos Juslaboral | Apresentação dos cursos</title>

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

 	
 	<section id="conteudo" class="internas2">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-12">
          <h2 class="vermelho"><span id="ico16"></span>Cursos</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-8">
 					<p>Combinando expertises em busca da realização integral</p>
 					<p>Conteúdos práticos e esclarecedores, que integram-se entre si para oferecer uma assimilação completa do conhecimento e favorecer a aprovação.</p> 					
 				</div>
        <div class="col-xs-12 col-sm-12 col-md-4 centraliza">
          <img src="images/cursos.png" alt="">
        </div>
 			</div>


      <%
      Set rsCursos = Server.CreateObject("ADODB.Recordset")
      rsCursos.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by id desc", Conexao
      while not rsCursos.eof
      %>
      <hr>
      <div class="row font-maior" style="margin-top:30px">
        <div class="col-xs-12 col-sm-2 col-md-2"><img src="images/ico_curso.jpg" alt=""></div>
        <div class="col-xs-12 col-sm-10 col-md-10">
          <h4><%=rsCursos("nome")%></h4>
          <p><%=rsCursos("resumo")%></p>
          <button type="button" class="btn btn-vermelho" style="margin-bottom:20px" onclick="location.href='cursos_interna.asp?id=<%=rsCursos("id")%>'">Veja mais</button>
        </div>
      </div>
      <%
      rsCursos.MoveNext()
      wend
      rsCursos.Close()
      set rsCursos = nothing            
      %>
      

 		</div>
 	</section> <!-- conteudo /-->


 	
 	
 	<!--#include file="_includes/_rodape.asp" --> 

<!-- início do javascript /-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


</body>
</html>