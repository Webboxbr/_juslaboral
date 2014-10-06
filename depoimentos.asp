<!--#include file="admin/conexao.asp" -->
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Saiba  o que pensam os candidatos aprovados a respeito do Curso Juslaboral ">
    <meta name="keywords" content="Depoimentos Curso Juslaboral, depoimento Curso Juslaboral, depoimentos Juslaboral, depoimento Juslaboral, aprovados Juslaboral, aprovado Juslaboral.">
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

 	<title>Cursos Juslaboral | Depoimentos</title>


<style type="text/css">

.hidden1 { 
  height: 90px; width: 100%; overflow: hidden;
  padding-top: 10px;
  padding-bottom: 10px;
}
.content1 {
  border-top:solid 1px #ddd;
  border bottom:solid 1px #ddd;
  padding-top: 10px;
  padding-bottom: 10px;
}

.panel { position: relative; }


.toggle { background: #fff; cursor: pointer;
padding-top: 10px;
  padding-bottom: 10px;}

</style>


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
 					<h2 class="cinza"><span id="ico23"></span>Depoimentos</h2>
 					<!--<p>UT ENIM AD MINIM VENIAM, ULLAMCO LABORIS  EX EA COMMODO CONSEQUAT.</p>-->
 				</div>				
 			</div> 			
 		</div>
 	</section> <!-- conteudo /-->

  <section id="depoimentos">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">          
          <p class="dep-texto-maior">Confira o depoimento de quem já participou do curso</p>
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
        <div class="col-xs-12 col-sm-12 col-md-4 it centraliza botao cinza-p" data-toggle="modal" data-target="#myModal<%=rsDepoimentos("id")%>">
          <div class="cap-foto">
            <img class="mask" src="images/mask_exagono.png" alt="">
            <img class="foto" src="<%=enderecoDepoimentoTh%><%=rsDepoimentos("arquivo")%>" alt="">
          </div>          
          <p><%=tamTexto(depoimento_resumo,480)%></p>
          <p><b><%=rsDepoimentos("nome")%></b></p>
        </div>


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
            <div class="col-xs-12 col-sm-9 col-md-9 it cinza-p">
              <%=depoimento%>
              <p><b><%=rsDepoimentos("nome")%></b></p>
            </div>
          </div>
      </div>
      <div class="modal-footer">
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
        
        
      </div>
      <div class="row centraliza" style="margin-top:15px; margin-bottom:30px;">
        <!--<button type="button" class="btn btn-amarelo">Veja mais</button>-->
      </div>

      
      <div style="heigth:30px;"></div>


      <%
      Set rsOutrosDepoimentos = Server.CreateObject("ADODB.Recordset")
      rsOutrosDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' and destaque='n' order by id desc", Conexao
      
      while not rsOutrosDepoimentos.eof
      %>
      <div id="panel<%=rsOutrosDepoimentos("id")%>" class="panel hidden1 content1">
        <div id="toggle<%=rsOutrosDepoimentos("id")%>" class="toggle">
          <div class="row">
            <div class="col-xs-12">
              <table>
                <tr class="it cinza-p">
                  <td width="54px" valign="top"><span id="ico24"></span></td>
                  <td><b><%=rsOutrosDepoimentos("nome")%></b><br>
                  <%=rsOutrosDepoimentos("texto")%></td>
                </tr>
              </table>
            </div>
          </div>         
        </div><!-- /content -->
      </div><!-- /panel -->



      <%
      rsOutrosDepoimentos.MoveNext()
      wend
      rsOutrosDepoimentos.Close()
      set rsOutrosDepoimentos = nothing            
      %>      

    </div>
  </section> <!-- depoimentos /-->

  <div class="clearfix"></div>
  <div style="height:60px;"></div>
 	
 	
 	<!--#include file="_includes/_rodape.asp" --> 



<!-- início do javascript /-->

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<%
Set rsOutrosDepoimentos = Server.CreateObject("ADODB.Recordset")
rsOutrosDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' and destaque='n' order by id desc", Conexao
while not rsOutrosDepoimentos.eof
%>
<script type="text/javascript">
jQuery(document).ready(function(){
  jQuery('#toggle<%=rsOutrosDepoimentos("id")%>').click(function(){
    jQuery('#panel<%=rsOutrosDepoimentos("id")%>').toggleClass( "hidden1", 300, "easeOutSine" );
  });
});
</script>
<%
rsOutrosDepoimentos.MoveNext()
wend
rsOutrosDepoimentos.Close()
set rsOutrosDepoimentos = nothing            
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