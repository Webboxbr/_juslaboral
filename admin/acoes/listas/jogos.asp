<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
'recupera campeonato'
Set rsCampeonatos = Server.CreateObject("ADODB.Recordset")
rsCampeonatos.Open "select * from "&prefixoTabela&"campeonatos where id="&idC, Conexao
nomeCampeonato = rsCampeonatos("nome")
%>
	<div><small>Jogos</small></div>
	<h1 class="desloca-esq">LISTA DE JOGOS - <%=nomeCampeonato%></h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=2&act=1&idC=<%=idC%>'">Incluir Jogo</button></div>
	<div class="clear"></div>

	<%
	Set rsJogos = Server.CreateObject("ADODB.Recordset")
	rsJogos.Open "select id, idcampeonato, horario, nometime1, nometime2, local, STR_TO_DATE(data,'%d/%m/%Y') as data from "&prefixoTabela&"jogos where idcampeonato="&idC&" order by data desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="jogos" width="100%">
		<thead>
			<tr>
	        	<th>Data</th>
	        	<th>Hora</th>           
	            <th>Local</th>
	            <th>Time da Casa</th>
	            <th>Time Advers&aacute;rio</th>
	            <th>Editar</th>
	            <th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsJogos.eof
	%>    		

			<tr class="gradeA">
				<td><%=rsJogos("data")%></td>
				<td><%=rsJogos("horario")%></td>
				<td><%=rsJogos("local")%></td>
				<td><%=rsJogos("nometime1")%></td>
				<td><%=rsJogos("nometime2")%></td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=2&act=2&id=<%=rsJogos("id")%>&idC=<%=idC%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=2&act=3&id=<%=rsJogos("id")%>&idC=<%=idC%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsJogos.MoveNext()
	wend

	rsJogos.Close()
	set rsJogos = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Data</th>
	        	<th>Hora</th>	            
	            <th>Local</th>
	            <th>Time da Casa</th>
	            <th>Time Advers&aacute;rio</th>
	            <th>Editar</th>
	            <th>Excluir</th>
	        </tr>
		</tfoot>
	</table>
<%
elseif act="2" then
%>
	<!-- não existe listagem nesse caso -->
<%
elseif act="3" then
%>
	<!-- não existe listagem nesse caso -->
<%
elseif act="4" then
%>
	<!-- não existe listagem nesse caso -->
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>