<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<!-- Não existe -->
<%
elseif act="2" then

Set rsNoticia = Server.CreateObject("ADODB.Recordset")
rsNoticia.Open "select * from "&prefixoTabela&"noticias where id="&id, Conexao
%>

	<div><small>Galeria da Not&iacute;cia</small></div>
	<h1>Vincular fotos com a not&iacute;cia: <strong><%=rsNoticia("nome")%></strong></h1>

	<p>Fotos dispon&iacute;veis: (clique na foto para vincular)</p>
	<%
	Set rsFotosDisponiveis = Server.CreateObject("ADODB.Recordset")
	rsFotosDisponiveis.Open "select * from "&prefixoTabela&"galeriaimagens order by id desc", Conexao

	while not rsFotosDisponiveis.eof
	idAtualFoto = rsFotosDisponiveis("id")
		
		Set rsFotosVinculadas1 = Server.CreateObject("ADODB.Recordset")
		rsFotosVinculadas1.Open "select * from "&prefixoTabela&"relacionamentofotonoticia where idfoto="&idAtualFoto&" and idnoticia="&id, Conexao
		
		if rsFotosVinculadas1.BOF = true then
		response.Write("<a href='_gravacao.asp?tipo=14&act=1&idFoto="& rsFotosDisponiveis("id") &"&idNoticia="& id &"' class='azul'><img src='"& enderecoGaleriaThumb+rsFotosDisponiveis("foto") &"' width='70' height='50' alt='' /></a>")
		end if

	rsFotosDisponiveis.MoveNext()
	wend
	rsFotosDisponiveis.Close()
	set rsFotosDisponiveis = nothing
	%>


	<p>Fotos vinculadas: (clique na foto para desvincular)</p>
	<%
	Set rsFotosVinculadas = Server.CreateObject("ADODB.Recordset")
	rsFotosVinculadas.Open "select * from "&prefixoTabela&"relacionamentofotonoticia where idnoticia="&id, Conexao
	if rsFotosVinculadas.BOF = false then
		while not rsFotosVinculadas.eof
			Set rsGaleriaFotos = Server.CreateObject("ADODB.Recordset")
			rsGaleriaFotos.Open "select * from "&prefixoTabela&"galeriaimagens where id="&rsFotosVinculadas("idfoto"), Conexao
				response.Write("<a href='_gravacao.asp?tipo=14&act=3&id="& rsFotosVinculadas("id") &"&idNoticia="& id &"' class='azul'><img src='"& enderecoGaleriaThumb+rsGaleriaFotos("foto") &"' width='70' height='50' alt='' /></a>")
		rsFotosVinculadas.MoveNext()
		wend
		rsFotosVinculadas.Close()
		set rsFotosVinculadas = nothing
	end if
	%>
	
<%
elseif act="3" then
%>	
	<!-- Não existe -->
<%
elseif act="4" then
%>

<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>