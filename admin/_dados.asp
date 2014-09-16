
<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->

<%
tipo		= request.QueryString("tipo")
act 		= request.QueryString("act")
id			= request("id")
idC			= request("idC")
%>

<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="Iso-8859-1">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
 	<title><%=tituloHome%></title>

 	<link href="ckeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
 	<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
 	<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>

	<style type="text/css" title="currentStyle">
    @import "css/demo_page.css";
    @import "css/jquery.dataTables.css";
    </style>

    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>

    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<script src="ckeditor/_samples/sample.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript" src="js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="utf-8">
        $(document).ready(function() {
        
		$('#example').dataTable({
		"iDisplayLength": 50,		
        "bPaginate": true,
        //"sType": "date-euro",
        //"bLengthChange": false,
        //"bFilter": true,
        //"bSort": true,
        //"bInfo": false,
        //"bAutoWidth": true
			});



		


        } );
    </script>
    
    <script type="text/javascript" src="js/mascaras.js"></script>

	<script type="text/javascript">
        function limpar(campo){  
            if (campo.value == campo.defaultValue){  
                campo.value = "";  
            }  
        }  
          
        function escrever(campo){  
            if (campo.value == ""){  
                campo.value = campo.defaultValue;  
            }  
        }  
    </script>


</head>
<body onLoad="javascript:reiniciarContadorSessao();">
	<div id="geral">
		<div class="cabecalho">
		    <div class="logoMenor" onclick="location.href='admin.asp'"></div>
		    <div class="logoff"><!--#include file="topo.asp" --></div>
		    <div style="clear:both"></div>
		</div>
		<!--#include file="menu.asp" -->
		<div class="corpo">

			<%
			'**********************************************************************'
			'**********************************************************************'
			'início das variações por tipo, act e id		
			'**********************************************************************'
			'**********************************************************************'
			%>

			<% if tipo="1" then %>
				<!--#include file="acoes/dados/campeonatos.asp" -->
			<% elseif tipo="2" then %>
				<!--#include file="acoes/dados/jogos.asp" -->
			<% elseif tipo="3" then %>
				<!--#include file="acoes/dados/escolhe_times.asp" -->
			<% elseif tipo="4" then	%>
				<!--#include file="acoes/dados/classificacao.asp" -->
			<% elseif tipo="5" then	%>
				<!--#include file="acoes/dados/galeria_imagens.asp" -->
			<% elseif tipo="6" then	%>
				<!--#include file="acoes/dados/videos.asp" -->
			<% elseif tipo="7" then	%>
				<!--#include file="acoes/dados/newsletter.asp" -->
			<% elseif tipo="8" then	%>
				<!--#include file="acoes/dados/cat_noticias.asp" -->
			<% elseif tipo="9" then	%>
				<!--#include file="acoes/dados/noticias.asp" -->
			<% elseif tipo="10" then %>
				<!--#include file="acoes/dados/releases.asp" -->
			<% elseif tipo="11" then %>
				<!--#include file="acoes/dados/jornalistas.asp" -->
			<% elseif tipo="12" then %>
				<!--#include file="acoes/dados/prog_semana.asp" -->
			<% elseif tipo="13" then %>
				<!--#include file="acoes/dados/profissionais.asp" -->
			<% elseif tipo="14" then %>
				<!--#include file="acoes/dados/vincular_foto.asp" -->
			<% elseif tipo="15" then %>
				<!--#include file="acoes/dados/banner.asp" -->
			<% elseif tipo="16" then %>
				<!--#include file="acoes/dados/popup.asp" -->
			<% elseif tipo="17" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="18" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="19" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="20" then %>
				<!-- inclua uma lista -->
			<% end if %>


		</div><!-- fecha corpo -->
		<div style="clear:both"></div>
		<div class="rodape">
		<!--#include file="rodape.asp" -->
		</div>
	</div> <!-- fecha geral --> 	
</body>
</html>