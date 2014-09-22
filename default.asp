<!--#include file="admin/conexao.asp" -->
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Webbox">

	
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

<%
'-----------------------------------------------------
'Nome: RemoveHTMLTags(ByVal strHTML)
'Tipo: Funcao
'Sinopse: Remove todas as tags HTML de uma string
'Parametros:
'   strHTML: String com as tags HTML a serem retiradas
'Retorno: String
'Autor: Gabriel Fróes - www.codigofonte.com.br
'-----------------------------------------------------
Function RemoveHTMLTags(ByVal strHTML)
    Dim objER
    Dim strTexto
 
    'Configurando o objeto de Expressão Regular
    Set objER            = New RegExp 
    objER.IgnoreCase    = True
    objER.Global        = True
    objER.Pattern        = "<[^>]*>"
    
    'Substituindo as tags encontradas pela expressão
    strTexto            = strHTML
    strTexto            = objER.Replace(strTexto, "")
    
    Set objER            = Nothing
 
    'Retornando a função
    RemoveHTMLTags = strTexto
End Function
 
'-----------------------------------------------------
'Exemplo de chamada da função
'-----------------------------------------------------
'Dim HTML
'HTML = "<font face='verdana' size='2'>teste</font> da função de retira as <b>TAGS</b> <font color='red'>HTML</font><br>"
'Texto com TAG
'Response.Write HTML
'Texto sem TAG
'Response.Write RemoveHTMLTags(HTML)
%>

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

 	<section id="banner">
 		<div class="container-fluid">
 			<div class="row">
 				<div class="col-xs-12">
		 			<ul class="bxslider">
            <%
            Set rsBanner = Server.CreateObject("ADODB.Recordset")
            rsBanner.Open "select * from "&prefixoTabela&"banner where ativo='s' order by id asc", Conexao
            
            while not rsBanner.eof
            linkBanner = rsBanner("link")            
            %>
              <li><a href="<%=linkBanner%>"><img src="<%=enderecoBanner%><%=rsBanner("arquivo")%>" alt=""></a></li>
            <%
            rsBanner.MoveNext()
            wend
            rsBanner.Close()
            set rsBanner = nothing            
            %>
					</ul>
				</div>
			</div>
 		</div>
 	</section> <!-- banner /-->
 	

  
  <section id="conteudo-home" class="bg-cont-home">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-4 justifica">
 					
          <h2 class="azul-escuro"><span id="ico7"></span>Quem Somos</h2>
 					<p>O <b>Curso Juslaboral</b> oferece toda a energia e suporte que você precisa em busca da tão sonhada aprovação.</p> 
          <p>Com professores experientes e apaixonados pelo que fazem, que acompanham seus alunos em todas as fases do concurso, o Curso tem como objetivo promover uma maneira diferente de aprovar, estabelecendo total parceria e cumplicidade para que você possa chegar cada vez mais longe.</p>
 					<div class="centraliza v-menor">
 						<button type="button" class="btn btn-azul-escuro" onclick="location.href='quem_somos.asp'">Veja mais</button>
 					</div>
          
 				</div>
 				<div class="col-xs-12 col-sm-12 col-md-4">
 					<h2 class="vermelho"><span id="ico8"></span>Cursos</h2>
 					<p>Conteúdos práticos e esclarecedores, que integram-se entre si para oferecer uma assimilação completa do conhecimento e favorecer a aprovação.</p>
 					<div class="centraliza">
 						<img src="images/cursos.png" alt="Cursos" class="img-cursos">
 					</div>
 					<div class="centraliza v-menor" style="margin-top:10px;">
 						<button type="button" class="btn btn-vermelho" onclick="location.href='cursos.asp'">Veja mais</button>
 					</div>
 				</div>
 				<div class="col-xs-12 col-sm-12 col-md-4">
          
 					<h2 class="laranja"><span id="ico9"></span>Notícias</h2>

          <%
          Set rsNoticias = Server.CreateObject("ADODB.Recordset")
          rsNoticias.Open "select * from "&prefixoTabela&"noticia where ativo='s' order by data desc limit 3", Conexao
          while not rsNoticias.eof

          link = rsNoticias("link")

          noticia = rsNoticias("texto")
          noticia = RemoveHTMLTags(noticia)

          %>			
          		
              <%
              if rsNoticias("link")<>"" then
              %>
              <a href="<%=link%>" target="_blank" class="link">
              <p style="word-wrap:break-word;"><span class="tit-not"><%=rsNoticias("nome")%> - <%=rsNoticias("data")%></span><br><%=tamTexto(noticia,197)%></p>
              </a>
              <%
              else
              %>
              <p style="word-wrap:break-word;"><span class="tit-not"><%=rsNoticias("nome")%> - <%=rsNoticias("data")%></span><br><%=tamTexto(noticia,197)%></p>
              <%
              end if
              %>

          <%
          rsNoticias.MoveNext()
          wend
          rsNoticias.Close()
          set rsNoticias = nothing            
          %>					
          
 				</div>
 			</div>
 			<div class="row v-maior" style="margin-top:10px;">
 				<div class="col-xs-12 col-sm-12 col-md-4 centraliza">
 					<button type="button" class="btn btn-azul-escuro" onclick="location.href='quem_somos.asp'">Veja mais</button>
 				</div>
 				<div class="col-xs-12 col-sm-12 col-md-4 centraliza">
 					<button type="button" class="btn btn-vermelho" onclick="location.href='cursos.asp'">Veja mais</button>
 				</div>
 				<div class="col-xs-12 col-sm-12 col-md-4 centraliza"></div>
 			</div>
 		</div>
 	</section> <!-- conteudo /-->


 
 	<section id="depoimentos">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12">
 					<h3 class="amarelo"><span id="ico10"></span> Depoimentos</h3>
 					<p class="dep-texto">Confira o depoimento de quem já participou do curso</p>
 					<div class="centraliza"><img src="images/chave_depoimentos.png" alt=""></div>
 				</div> 				
 			</div>
 			<div class="row" style="margin-top:20px;">

        <%
        Set rsDepoimentos = Server.CreateObject("ADODB.Recordset")
        rsDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' and destaque='s' order by id desc limit 3", Conexao
        
        while not rsDepoimentos.eof

        Dim depoimento
        depoimento = rsDepoimentos("texto")
        depoimento_resumo = RemoveHTMLTags(depoimento)

        %> 
 				<div class="col-xs-12 col-sm-12 col-md-4 it centraliza botao" data-toggle="modal" data-target="#myModal<%=rsDepoimentos("id")%>">
 					<div class="cap-foto">
 						<img class="mask" src="images/mask_exagono.png" alt="">
 						<img class="foto" src="<%=enderecoDepoimentoTh%><%=rsDepoimentos("arquivo")%>" alt="">
 					</div> 					
 					<p><%=tamTexto(depoimento_resumo,480)%></p>
 					<p><b><%=rsDepoimentos("nome")%></b></p>
 				</div>
        <%
        rsDepoimentos.MoveNext()
        wend
        rsDepoimentos.Close()
        set rsDepoimentos = nothing            
        %>
 				
 				
 			</div>
 			<div class="row centraliza" style="margin-top:15px; margin-bottom:30px;">
 				<button type="button" class="btn btn-amarelo" onclick="location.href='depoimentos.asp'">Veja mais</button>
 			</div>
 		</div>
 	</section> <!-- depoimentos /-->



 	
 	<!--#include file="_includes/_rodape.asp" --> 




<%
Set rsDepoimentos = Server.CreateObject("ADODB.Recordset")
rsDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' and destaque='s' order by id desc limit 3", Conexao

while not rsDepoimentos.eof
%> 

<!-- Modal /-->
<div class="modal fade" id="myModal<%=rsDepoimentos("id")%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
        <h4 class="modal-title" id="myModalLabel"><%=rsDepoimentos("nome")%></h4>
      </div>
      <div class="modal-body">
          <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3">
              <div class="cap-foto">
                <img class="mask" src="images/mask_exagono.png" alt="" width="140px">
                <img class="foto" src="<%=enderecoDepoimentoTh%><%=rsDepoimentos("arquivo")%>" alt="" width="140px">
              </div>
            </div>
            <div class="col-xs-12 col-sm-9 col-md-9">
              <%=depoimento%>
              <p><b><%=rsDepoimentos("nome")%></b></p>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-amarelo" onclick="location.href='depoimentos.asp'">Veja outros depoimentos</button>
        <button type="button" class="btn btn-amarelo" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $('#myModal<%=rsDepoimentos("id")%>').on('hidden.bs.modal', function (e) {
      // do something...
  })
</script>

<%
rsDepoimentos.MoveNext()
wend
rsDepoimentos.Close()
set rsDepoimentos = nothing            
%>








<link rel="stylesheet" type="text/css" href="css/normalize.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">


<!-- início do javascript /-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script src="bxslider/jquery.bxslider.js"></script>

<script type="text/javascript">	
	$('.bxslider').bxSlider({
	  	auto: true,
    	pause: 8000,
    	speed: 500	  
	});
</script>


<%
'****************************************************************************************************
' FUNÇÃO PARA RESUMO DE TEXTOS
'****************************************************************************************************
function tamTexto(texto, y)
  if len(trim(texto)) > y Then  'Só executa se o texto for maior que o tamanho determinado
    Aux = mid(texto, 1, y) 'Pega a parte do texto do tamanho que voce determinou na chamada da função...
    Aux = Aux & " ..."  'Acrescenta as reticências
  else
    Aux = texto  'Exibe o texto sem cortes
  end if
  tamTexto = Aux  'Passa o valor para a função.
end function
'texto="Este recurso é muito útil para quando voce quizer exibir apenas parte de um determinado texto na tela..."
'response.write "Texto original: " & texto & "<br>"
'response.write "Tamanho do texto: " & len(trim(texto)) & "<br>"
'response.write "<BR>Texto a ser exibido pela função<HR>" & tamTexto(texto,30) & "<HR>"
'****************************************************************************************************
' FUNÇÃO PARA RESUMO DE TEXTOS
'****************************************************************************************************
%>




<%
Conexao.Close()
%>
</body>
</html>