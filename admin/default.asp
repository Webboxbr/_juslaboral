<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="conexao.asp" -->

<%
erro	=	request("err")
%>

<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title><%=tituloHome%></title>
<link href="../css/normalize.css" rel="stylesheet" type="text/css" />
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
</head>

<body class="bgHome">



<div class="header">
	<div class="margens">
		<h1 class="logo"></h1>
		<div class="desloca-dir" style="margin-top:20px;margin-right:27px;width:620px;">
			<form id="FormLogin" name="FormLogin" method="post" action="verifica.asp">
			    <fieldset>
				    <div class="desloca-esq">
				    <label>E-mail <input name="Login" id="Login" type="text" class="cx-form" /></label>
				    <label>Senha: <input name="Senha" id="Senha" type="password" class="cx-form" /></label>
				    </div>
				    <div class="desloca-dir">
				    <input type="image" src="images/botEntrar.jpg" name="button" id="button"  />
				    </div>
				    <span class="clear"></span>
			    </fieldset> 
			</form>
			<!--<p class="t12 branco semEsp desloca-dir" style="margin-right:140px;">Esqueceu a senha? <a href="#" class="link-normal-branco">Clique aqui</a>.</p>-->
			<span class="clear"></span>		
		</div>
		<span class="clear"></span>
	</div>	
</div>

<div id="geral">

	<div class="logo"></div>
	<p class="t30 azul-2 aling-centro">Bem vindo a ferramenta de administra&ccedil;&atilde;o do<br><span class="t50 negrito">Curso Juslaboral</span></p>

</div>

<div class="footer">
	<div class="margens">
		
		<div><img src="images/f1.png" alt=""></div>
		<div><img src="images/1.png" alt=""><a href="mailto:suporte@webbox.com.br"><img src="images/2.png" alt=""></a><a href="http://www.webbox.com.br" target="_blank"><img src="images/3.png" alt=""></a><a href="https://pt-br.facebook.com/Webboxbrasil" target="_blank"><img src="images/4.png" alt=""></a></div>

	</div>
</div>

</body>
</html>
