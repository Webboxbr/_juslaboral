<!--#include file="admin/conexao.asp" -->
<%
fase = request.querystring("f")

if fase>"3" or fase<"1" then
fase = "1"
end if
%>
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
 					<h2 class="cinza"><span id="ico20"></span>Provas <%=fase%>ª Fase</h2>
 					<p>Selecione a prova desejada e clique no ícone para visualizá-la.</p> 									
 				</div>				
 			</div> 


      


      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
          

          <div class="panel-group" id="accordion" style="margin-top:30px">


            <%
            Set rsProvas = Server.CreateObject("ADODB.Recordset")
            if fase="1" then
            rsProvas.Open "select * from "&prefixoTabela&"primeira_fase where ativo='s' order by id desc", Conexao
            elseif fase="2" then
            rsProvas.Open "select * from "&prefixoTabela&"segunda_fase where ativo='s' order by id desc", Conexao
            elseif fase="3" then
            rsProvas.Open "select * from "&prefixoTabela&"terceira_fase where ativo='s' order by id desc", Conexao
            end if

            dim contador
            contador = 1
            while not rsProvas.eof

            if contador = 1 then
            statusBloco = "in"
            else
            statusBloco = "out"
            end if
            %>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <span class="ico21"></span><a data-toggle="collapse" data-parent="#accordion" href="#collapse<%=rsProvas("id")%>"><%=rsProvas("nome")%></a>
                </h4>
              </div>
              <div id="collapse<%=rsProvas("id")%>" class="panel-collapse collapse <%=statusBloco%>">
                <div class="panel-body">
                  <ul>
                    <%
                    Set rsArquivo = Server.CreateObject("ADODB.Recordset")
                    if fase="1" then
                    rsArquivo.Open "select * from "&prefixoTabela&"arquivo_1 where ativo='s' and idFase="&rsProvas("id")&" order by id desc", Conexao
                    elseif fase="2" then
                    rsArquivo.Open "select * from "&prefixoTabela&"arquivo_2 where ativo='s' and idFase="&rsProvas("id")&" order by id desc", Conexao
                    elseif fase="3" then
                    rsArquivo.Open "select * from "&prefixoTabela&"arquivo_3 where ativo='s' and idFase="&rsProvas("id")&" order by id desc", Conexao
                    end if

                    while not rsArquivo.eof
                    %>
                      <li><a href="<%=enderecoArquivo%><%=rsArquivo("arquivo")%>" class="link" target="_blank"><%=rsArquivo("nome")%></a></li>
                    <%
                    rsArquivo.MoveNext()                    
                    wend
                    rsArquivo.Close()
                    set rsArquivo = nothing            
                    %>
                  </ul>
                </div>
              </div>
            </div>
            <%
            rsProvas.MoveNext()
            contador = contador+1
            wend
            rsProvas.Close()
            set rsProvas = nothing
            %>

          </div>

        </div>
      </div>


 		</div>
 	</section> <!-- conteudo /-->
 	
 	
 	<!--#include file="_includes/_rodape.asp" --> 

<!-- início do javascript /-->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script>
$('#myCollapsible').on('hidden.bs.collapse', function () {
  // do something…
})  
</script>

<%
Conexao.Close()
%>
</body>
</html>