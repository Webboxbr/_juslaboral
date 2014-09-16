
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

 	<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
 	<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>

	<style type="text/css" title="currentStyle">
    @import "css/demo_page.css";
    @import "css/jquery.dataTables.css";
    </style>

    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>

    <script type="text/javascript" language="javascript" src="js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" language="javascript" src="js/euDateFormat.js"></script>

    

	<script type="text/javascript" charset="utf-8">
        $(document).ready(function() {
        
			$('#example').dataTable({
				"iDisplayLength": 50,		
		        "bPaginate": true,
		        //"bLengthChange": false,
		        //"bFilter": true,
		        //"bSort": true,
		        //"bInfo": false,
		        //"bAutoWidth": true
			});
			

			//ordenado por data - o plugin euDateFormat.js é necessário para a ordenação funcionar corretamente
			$('#jogos').dataTable( {
				"iDisplayLength": 50,		
	        	"bPaginate": true,
	        	"aoColumns": [{ "sType": "eu_date" }, null, null, null, null, null, null ],
			} );
			
			//ordenado por data - o plugin euDateFormat.js é necessário para a ordenação funcionar corretamente
			$('#noticias').dataTable( {
				"iDisplayLength": 50,		
	        	"bPaginate": true,
	        	"aoColumns": [null, null, null, { "sType": "eu_date" }, null, null, null ],
			} );

			//ordenado por data - o plugin euDateFormat.js é necessário para a ordenação funcionar corretamente
			$('#releases').dataTable( {
				"iDisplayLength": 50,		
	        	"bPaginate": true,
	        	"aoColumns": [null, null, { "sType": "eu_date" }, null, null ],
			} );

			$('#newsletter').dataTable( {
				"aaSorting": [[0, 'desc']],
				"aoColumnDefs": [{ "bVisible": false, "aTargets": [0] }]        
			} );


			$('#profissionais').dataTable( {
				"iDisplayLength": 100,
				"aaSorting": [[0, 'asc']],
				"aoColumnDefs": [{ "bVisible": false, "aTargets": [0] }]        
			} );



			


        } );
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
				<!--#include file="acoes/listas/campeonatos.asp" -->
			<% elseif tipo="2" then %>
				<!--#include file="acoes/listas/jogos.asp" -->
			<% elseif tipo="3" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="4" then	%>
				<!-- inclua uma lista -->
			<% elseif tipo="5" then	%>
				<!--#include file="acoes/listas/galeria_imagens.asp" -->
			<% elseif tipo="6" then	%>
				<!--#include file="acoes/listas/videos.asp" -->
			<% elseif tipo="7" then	%>
				<!--#include file="acoes/listas/newsletter.asp" -->
			<% elseif tipo="8" then	%>
				<!--#include file="acoes/listas/cat_noticias.asp" -->
			<% elseif tipo="9" then	%>
				<!--#include file="acoes/listas/noticias.asp" -->
			<% elseif tipo="10" then %>
				<!--#include file="acoes/listas/releases.asp" -->
			<% elseif tipo="11" then %>
				<!--#include file="acoes/listas/jornalistas.asp" -->
			<% elseif tipo="12" then %>
				<!--#include file="acoes/listas/prog_semana.asp" -->
			<% elseif tipo="13" then %>
				<!--#include file="acoes/listas/profissionais.asp" -->
			<% elseif tipo="14" then %>
				<!--#include file="acoes/listas/vincular_foto.asp" -->
			<% elseif tipo="15" then %>
				<!--#include file="acoes/listas/banner.asp" -->
			<% elseif tipo="16" then %>
				<!--#include file="acoes/listas/popup.asp" -->
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