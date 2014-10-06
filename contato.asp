<!--#include file="admin/conexao.asp" -->
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Entre em contato com o Curso Juslaboral e comece agora mesmo a planejar a sua aprovação.">
    <meta name="keywords" content="Contato Cursos Juslaboral, contato Juslaboral, telefone Juslaboral, endereço Juslaboral.">
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

 	<title>Cursos Juslaboral | Contato – Fale conosco</title>

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

 	
 	<section id="conteudo" class="internas">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-12">
 					<h2 class="cinza"><span id="ico25"></span>Contato</h2>
 					<p>Sua aprovação começa aqui!</p>
 					<p>Preencha o formulário abaixo e entre em contato com o Curso Juslaboral.</p>
 				</div>				
 			</div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6">
          <div style="height:40px"></div>
          <form role="form" method="post" action="enviaemail.asp">
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





<%
Set rsDepoimentos = Server.CreateObject("ADODB.Recordset")
rsDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' and destaque='s' order by id desc limit 1", Conexao

Dim depoimento
depoimento = rsDepoimentos("texto")
depoimento_resumo = RemoveHTMLTags(depoimento)
%> 
        <div class="col-xs-12 col-sm-12 col-md-6">
          <div class="centraliza">
            <h3><span id="ico26"></span>Depoimentos</h3>
            <p class="dep-texto">Confira o depoimento de quem já participou do curso</p>
            <div class="botao it t12" data-toggle="modal" data-target="#myModal<%=rsDepoimentos("id")%>">                        
              <p><%=tamTexto(depoimento_resumo,480)%></p>
              <p><b><%=rsDepoimentos("nome")%></b></p>
            </div>
          </div>
        </div>






      </div>		
 		</div>
 	</section> <!-- conteudo /-->
 	
 	
 	<!--#include file="_includes/_rodape.asp" -->




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
set rsDepoimentos = nothing            
%>



<!-- Modal /-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h5 class="modal-title" id="myModalLabel">MENSAGEM ENVIADA COM SUCESSO!</h5>
      </div>
      <div class="modal-body">
          <div class="row">
            
            <div class="col-xs-12">
              <p>Agradecemos o contato. Estamos analisando o conteúdo e, caso necessário ou solicitado, retornaremos assim que possível.</p>
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
        <h5 class="modal-title" id="myModalLabel">OCORREU ALGUM PROBLEMA NO ENVIO DA SUA MENSAGEM!</h5>
      </div>
      <div class="modal-body">
          <div class="row">
            
            <div class="col-xs-12">
              <p>Veja se os campos com (*) foram preenchidos ou tente novamente mais tarde.</p>
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
        <h5 class="modal-title" id="myModalLabel">OCORREU ALGUM PROBLEMA NO ENVIO DA SUA MENSAGEM!</h5>
      </div>
      <div class="modal-body">
          <div class="row">
            
            <div class="col-xs-12">
              <p>O e-mail informado não parece ser um e-mail válido.</p>
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