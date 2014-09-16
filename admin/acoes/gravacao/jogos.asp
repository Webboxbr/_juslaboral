<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	data 	=	request.form("txtData")
	horario = 	request.form("txtHorario")
	local 	=	request.form("txtLocal")
	time1	=	request.form("txtMandante")
	time2	=	request.form("txtAdversario")
	result1 =	request.form("txtResultado1")
	result2 =	request.form("txtResultado2")
	res_pe1	=	request.form("txtResult_penals1")
	res_pe2	=	request.form("txtResult_penals2")
	ficha   =	request.form("txtFicha")
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	'recuperando o nome dos times'
	Set rsTimes1 = Server.CreateObject("ADODB.Recordset")
	rsTimes1.Open "select * from "&prefixoTabela&"times_participantes where id="&time1, Conexao
	nomeTime1 = rsTimes1("nome")

	Set rsTimes2 = Server.CreateObject("ADODB.Recordset")
	rsTimes2.Open "select * from "&prefixoTabela&"times_participantes where id="&time2, Conexao
	nomeTime2 = rsTimes2("nome")


	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"jogos (idcampeonato, idtime1, idtime2, nometime1, nometime2, fichatecnica, local, data, horario, resultado1, resultado2, result_penals1, result_penals2, ultima_alteracao) values ('" & idC & "','" & time1 & "','" & time2 & "','" & nomeTime1 & "','" & nomeTime2 & "','" & ficha & "','" & local & "','" & data & "','" & horario & "','" & result1 & "','" & result2 & "','" & res_pe1 & "','" & res_pe2 & "','" & ultima_alteracao & "')"
	addRs.open addSQL, Conexao



	'pega o último id cadastrado'
	Set rsUltimoJogoCadastrado = Server.CreateObject("ADODB.Recordset")
	rsUltimoJogoCadastrado.Open "select * from "&prefixoTabela&"jogos order by id desc limit 1", Conexao
	idJogo = rsUltimoJogoCadastrado("id")


	'inclui resultados time1'
	set addRs1=Server.CreateObject("ADODB.recordset")
	addSQL1 = "INSERT INTO "&prefixoTabela&"resultados (idcampeonato, idjogo, idtime, resultado) values ('" & idC & "','" & idJogo & "','" & time1 & "','" & result1 & "')"
	addRs1.open addSQL1, Conexao

	'inclui resultados time2'
	set addRs2=Server.CreateObject("ADODB.recordset")
	addSQL2 = "INSERT INTO "&prefixoTabela&"resultados (idcampeonato, idjogo, idtime, resultado) values ('" & idC & "','" & idJogo & "','" & time2 & "','" & result2 & "')"
	addRs2.open addSQL2, Conexao



	response.Redirect("_listas.asp?tipo=2&act=1&id="&id&"&idC="&idC)

elseif act="2" then
	data 	=	request.form("txtData")
	horario = 	request.form("txtHorario")
	local 	=	request.form("txtLocal")
	time1	=	request.form("txtMandante")
	time2	=	request.form("txtAdversario")
	result1 =	request.form("txtResultado1")
	result2 =	request.form("txtResultado2")
	res_pe1	=	request.form("txtResult_penals1")
	res_pe2	=	request.form("txtResult_penals2")
	ficha   =	request.form("txtFicha")
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	'recuperando o nome dos times'
	Set rsTimes1 = Server.CreateObject("ADODB.Recordset")
	rsTimes1.Open "select * from "&prefixoTabela&"times_participantes where id="&time1, Conexao
	nomeTime1 = rsTimes1("nome")

	Set rsTimes2 = Server.CreateObject("ADODB.Recordset")
	rsTimes2.Open "select * from "&prefixoTabela&"times_participantes where id="&time2, Conexao
	nomeTime2 = rsTimes2("nome")

	
	

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"jogos SET idtime1='"& time1 &"', idtime2='"& time2 &"', nometime1='"& nomeTime1 &"', nometime2='"& nomeTime2 &"', fichatecnica='"& ficha &"', local='"& local &"', data='"& data &"', horario='"& horario &"', resultado1='"& result1 &"', resultado2='"& result2 &"', result_penals1='"& res_pe1 &"', result_penals2='"& res_pe2 &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao



	set addRs1=Server.CreateObject("ADODB.recordset")
	editSQL1 = "UPDATE "&prefixoTabela&"resultados SET resultado='"& result1 &"' WHERE idjogo="&id&" and idtime="&time1
	addRs1.open editSQL1, Conexao

	set addRs2=Server.CreateObject("ADODB.recordset")
	editSQL2 = "UPDATE "&prefixoTabela&"resultados SET resultado='"& result2 &"' WHERE idjogo="&id&" and idtime="&time2
	addRs2.open editSQL2, Conexao

	

	response.Redirect("_listas.asp?tipo=2&act=1&id="&id&"&idC="&idC)
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