
<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->

<%
tipo		= request.QueryString("tipo")
act 		= request.QueryString("act")
id			= request("id")
idC			= request("idC")
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=tituloHome%></title>
<link href="../css/normalize.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />


<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>

	<style type="text/css" title="currentStyle">
    @import "css/demo_page.css";
    @import "css/jquery.dataTables.css";
    </style>

<script src="js/mascaras.js"></script>
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

			<%
			'**********************************************************************'
			'**********************************************************************'
			'início das variações por tipo, act e id		
			'**********************************************************************'
			'**********************************************************************'
			%>

			<% if tipo="1" then %>
				<!--#include file="acoes/dados/_banner.asp" -->
			<% elseif tipo="2" then %>
				<!--#include file="acoes/dados/_noticia.asp" -->
			<% elseif tipo="3" then %>
				<!--#include file="acoes/dados/_depoimento.asp" -->
			<% elseif tipo="4" then	%>
				<!--#include file="acoes/dados/_galeria.asp" -->
			<% elseif tipo="5" then	%>
				<!--#include file="acoes/dados/_primeira_fase.asp" -->
			<% elseif tipo="6" then	%>
				<!--#include file="acoes/dados/_segunda_fase.asp" -->
			<% elseif tipo="7" then	%>
				<!--#include file="acoes/dados/_terceira_fase.asp" -->
			<% elseif tipo="8" then	%>
				<!--#include file="acoes/dados/_arquivo_1.asp" -->
			<% elseif tipo="9" then	%>
				<!--#include file="acoes/dados/_arquivo_2.asp" -->
			<% elseif tipo="10" then %>
				<!--#include file="acoes/dados/_arquivo_3.asp" -->
			<% elseif tipo="11" then %>
				<!--#include file="acoes/dados/_cursos.asp" -->
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

<div style="height:50px;"></div>
</div>

<div class="footer">
<!--#include file="rodape.asp" -->
</div>

</body>
</html>







