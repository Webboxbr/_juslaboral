<!--#include file="_includes/global.asp" -->

<%
	Set Conexao = Server.CreateObject("ADODB.Connection")
	dB = conn
	Conexao.Open dB
%>