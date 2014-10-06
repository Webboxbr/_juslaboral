<!--#include file="admin/conexao.asp" -->
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
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
 					<h2 class="vermelho"><span id="ico27"></span>Inscrição</h2>
 					<p>FAÇA SUA INSCRIÇÃO AGORA MESMO E DÊ O 1º PASSO RUMO À APROVAÇÃO!</p>
 					<p>Para participar, preencha os campos abaixo com seus dados, o curso desejado e clique em “Quero me inscrever!”.</p>
 				</div>				
 			</div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6">
          <div style="height:40px"></div>

          <form id="formContato" name="formContato" method="POST" action="enviamail_inscricao.asp">
            <div class="form-group">
              <label for="nome">Digite seu nome *</label>
              <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome *">
            </div>
            <div class="form-group">
              <label for="curso">Curso desejado *</label>
              <select class="form-control" id="curso" name="curso">
              <option value="0" selected="">Curso desejado *</option>
                <%
                Set rsCuroso = Server.CreateObject("ADODB.Recordset")
                rsCuroso.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by nome asc", Conexao
                while not rsCuroso.eof
                %>
                <option value="<%=rsCuroso("id")%>"><%=rsCuroso("nome")%></option>
                <%
                rsCuroso.MoveNext()
                wend
                rsCuroso.Close()
                set rsCuroso = nothing            
                %>                
              </select>
            </div>
            <div class="form-group">
              <label for="email">Seu e-mail *</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="Seu e-mail *">
            </div>
            <div class="form-group">
              <label for="telefone">Seu telefone </label>
              <input type="tel" class="form-control" id="telefone" name="telefone" placeholder="Seu telefone">
            </div>            
            <small>* Preenchimento obrigatório</small><br>
            <button type="submit" class="btn btn-vermelho">QUERO ME INSCREVER!</button>
          </form>


        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6">
              <h3 class="vermelho alinha-esq">Cursos</h3>
              <p>Conteúdos práticos e esclarecedores, que integram-se entre si para oferecer uma assimilação completa do conhecimento e favorecer a aprovação.</p>
              <!--<button type="submit" class="btn btn-cinza-escuro">Veja mais</button> /-->
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
              <div style="height:50px"></div>
              <img src="images/cursos.png" alt="Cursos" class="img-cursos">
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
        <h5 class="modal-title" id="myModalLabel">PEDIDO DE INSCRIÇÃO ENVIADO COM SUCESSO!</h5>
      </div>
      <div class="modal-body">
          <div class="row">
            
            <div class="col-xs-12">
              <p>Em breve entraremos em contato com você com mais detalhes sobre o curso escolhido, além de outras informações para que sua participação seja confirmada. Aguarde.</p>
              <p><b>CONHEÇA OS OUTROS CURSOS</b></p>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <ul>
                <%
                Set rsOutrosCursos = Server.CreateObject("ADODB.Recordset")
                rsOutrosCursos.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by nome asc", Conexao
                while not rsOutrosCursos.eof
                %>
                <li><a href="cursos_interna.asp?id=<%=rsOutrosCursos("id")%>" class="link"><%=rsOutrosCursos("nome")%></a></li>
                <%
                rsOutrosCursos.MoveNext()
                wend
                rsOutrosCursos.Close()
                set rsOutrosCursos = nothing            
                %>
              </ul>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-amarelo" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div> 

<!-- Modal /-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h5 class="modal-title" id="myModalLabel">OCORREU ALGUM PROBLEMA NO ENVIO DA SUA INSCRIÇÃO!</h5>
      </div>
      <div class="modal-body">
          <div class="row">
            
            <div class="col-xs-12">
              <p>Veja se os campos com (*) foram preenchidos ou tente novamente mais tarde.</p>
              <p><b>CONHEÇA OS OUTROS CURSOS</b></p>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <ul>
                <%
                Set rsOutrosCursos = Server.CreateObject("ADODB.Recordset")
                rsOutrosCursos.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by nome asc", Conexao
                while not rsOutrosCursos.eof
                %>
                <li><a href="cursos_interna.asp?id=<%=rsOutrosCursos("id")%>" class="link"><%=rsOutrosCursos("nome")%></a></li>
                <%
                rsOutrosCursos.MoveNext()
                wend
                rsOutrosCursos.Close()
                set rsOutrosCursos = nothing            
                %>
              </ul>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-amarelo" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>


<!-- Modal /-->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h5 class="modal-title" id="myModalLabel">OCORREU ALGUM PROBLEMA NO ENVIO DA SUA INSCRIÇÃO!</h5>
      </div>
      <div class="modal-body">
          <div class="row">
            
            <div class="col-xs-12">
              <p>O e-mail informado não parece ser um e-mail válido.</p>
              <p><b>CONHEÇA OS OUTROS CURSOS</b></p>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <ul>
                <%
                Set rsOutrosCursos = Server.CreateObject("ADODB.Recordset")
                rsOutrosCursos.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by nome asc", Conexao
                while not rsOutrosCursos.eof
                %>
                <li><a href="cursos_interna.asp?id=<%=rsOutrosCursos("id")%>" class="link"><%=rsOutrosCursos("nome")%></a></li>
                <%
                rsOutrosCursos.MoveNext()
                wend
                rsOutrosCursos.Close()
                set rsOutrosCursos = nothing            
                %>
              </ul>
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

<%
id = request.querystring("id")
if id ="1" then
%>
<script type="text/javascript"> 
  $('#myModal').modal('show')
</script>
<%
elseif id="2" then
%>
<script type="text/javascript"> 
  $('#myModal2').modal('show')
</script>
<%
elseif id="3" then
%>
<script type="text/javascript"> 
  $('#myModal3').modal('show')
</script>
<%
end if
%>

</body>
</html>