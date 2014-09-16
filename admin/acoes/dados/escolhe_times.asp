<style type="text/css">
a.times {
	font-size:10px;
	float: left;
	width: 110px;
	height:80px;
	margin-bottom: 10px;
	text-align: center;
}
a figure {
	margin: 0;
	padding: 0;
}
.box1 {
	padding:10px;
	background-color:#ededed;
}
.box2 {
	padding:10px;
	background-color:#ccc;
}

</style>



<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
'recupera o campeonato corrente'
Set rsCampeonatos = Server.CreateObject("ADODB.Recordset")
rsCampeonatos.Open "select * from "&prefixoTabela&"campeonatos where id="&idC, Conexao
%>

	<div><small>Campeonatos</small></div>
	<h1>Selecione os times que ir&atilde; participar do campeonato.</h1>
	<p><%=rsCampeonatos("nome")%></p>

	<div class="desloca-esq box1" style="width:440px; margin-right:20px">
		<h1>Times Dispon&iacute;veis:</h1>
		<%
		Set rsTimesDisponiveis = Server.CreateObject("ADODB.Recordset")
		rsTimesDisponiveis.Open "select * from "&prefixoTabela&"times order by nome asc", Conexao

		while not rsTimesDisponiveis.eof
		timeAtual = rsTimesDisponiveis("id")
			
			Set rsTimeSelecionado = Server.CreateObject("ADODB.Recordset")
			rsTimeSelecionado.Open "select * from "&prefixoTabela&"times_participantes where idtime="&timeAtual&" and idcampeonato="&idC, Conexao
			
			if rsTimeSelecionado.BOF = true then
			response.Write("<a href='_gravacao.asp?tipo=3&act=1&id="& rsTimesDisponiveis("id") &"&idC="& idC &"' class='times'><figure><img src='"& enderecoEscudoTime+rsTimesDisponiveis("escudo") &"' width='50' height='44' alt='' title='"&rsTimesDisponiveis("nome")&"' /><figcaption>"& rsTimesDisponiveis("nome") &"</figcaption></figure></a>")
			end if

		rsTimesDisponiveis.MoveNext()
		wend
		rsTimesDisponiveis.Close()
		set rsTimesDisponiveis = nothing
		%>
		<div class="clear"></div>
	</div>


	<div class="desloca-esq box2" style="width:440px">
		<h1>Times Selecionados:</h1>

		<%
		Set rsTimeEscalado = Server.CreateObject("ADODB.Recordset")
		rsTimeEscalado.Open "select * from "&prefixoTabela&"times_participantes where idcampeonato="&idC, Conexao
		if rsTimeEscalado.BOF = false then
			while not rsTimeEscalado.eof
				Set rsTimes = Server.CreateObject("ADODB.Recordset")
				rsTimes.Open "select * from "&prefixoTabela&"times where id="&rsTimeEscalado("idtime"), Conexao
					response.Write("<a href='_gravacao.asp?tipo=3&act=3&id="& rsTimeEscalado("id") &"&idC="& idC &"' class='times'><figure><img src='"& enderecoEscudoTime+rsTimeEscalado("escudo") &"' width='50' height='44' alt='' title='"& rsTimeEscalado("nome") &"' /><figcaption>"& rsTimeEscalado("nome") &"</figcaption></figure></a>")
			rsTimeEscalado.MoveNext()
			wend
			rsTimeEscalado.Close()
			set rsTimeEscalado = nothing
		end if
		%>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>

<%
elseif act="2" then
%>
	<!-- não existe esse caso -->
<%
elseif act="3" then
%>
	<!-- não existe esse caso -->
<%	
elseif act="4" then
%>
	<!-- não existe esse caso -->
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>