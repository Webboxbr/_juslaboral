
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
<meta charset="UTF-8">
<title><%=tituloHome%></title>
<link href="../css/normalize.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />

	<style type="text/css" title="currentStyle">
	    @import "css/demo_page.css";
	    @import "css/jquery.dataTables.css";
    </style>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>
<script src="js/mascaras.js"></script>
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
	        	"aaSorting": [[1, 'desc']],
	        	"aoColumns": [null, { "sType": "eu_date" }, null, null ],
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



<div class="header">
	<div class="margens">
		<div class="desloca-esq"><!--#include file="topo.asp" --></div>
		<span class="clear"></span>
	</div>
</div>
<div class="menu">
	<!--#include file="menu.asp" -->
</div>

<div id="geral">
<div style="height:50px;"></div>
	<!--conteudo aqui /-->

			<%
			'**********************************************************************'
			'**********************************************************************'
			'início das variações por tipo, act e id		
			'**********************************************************************'
			'**********************************************************************'
			%>

			<% if tipo="1" then %>
				<!--#include file="acoes/listas/_banner.asp" -->
			<% elseif tipo="2" then %>
				<!--#include file="acoes/listas/_noticia.asp" -->
			<% elseif tipo="3" then %>
				<!--#include file="acoes/listas/_depoimento.asp" -->
			<% elseif tipo="4" then	%>
				<!--#include file="acoes/listas/_album.asp" -->
			<% elseif tipo="5" then	%>
				<!--#include file="acoes/listas/_primeira_fase.asp" -->
			<% elseif tipo="6" then	%>
				<!--#include file="acoes/listas/_segunda_fase.asp" -->
			<% elseif tipo="7" then	%>
				<!--#include file="acoes/listas/_terceira_fase.asp" -->
			<% elseif tipo="8" then	%>
				<!-- inclua uma lista -->
			<% elseif tipo="9" then	%>
				<!-- inclua uma lista -->
			<% elseif tipo="10" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="11" then %>
				<!--#include file="acoes/listas/_cursos.asp" -->
			<% elseif tipo="12" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="13" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="14" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="15" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="16" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="17" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="18" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="19" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="20" then %>
				<!-- inclua uma lista -->			
			<% end if %>


	<!--conteudo aqui /-->
<div style="height:50px;"></div>
</div>

<div class="footer">
<!--#include file="rodape.asp" -->
</div>

</body>
</html>







































