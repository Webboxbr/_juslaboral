<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Releases</small></div>
	<h1 class="desloca-esq">Lista de releases cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=10&act=1'">Incluir Release</button></div>
	<div class="clear"></div>

	<%
	Set rsReleases = Server.CreateObject("ADODB.Recordset")
	rsReleases.Open "select id, nome, arquivo, STR_TO_DATE(data,'%d/%m/%Y') as data from "&prefixoTabela&"releases order by data desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="releases" width="100%">
		<thead>
			<tr>				
	        	<th>Nome</th>
	        	<th>Arquivo</th>
	        	<th>Data</th>
	        	<th>Editar</th>
	        	<th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsReleases.eof
	%>    		

			<tr class="gradeA">
				<td><%=rsReleases("nome")%></td>
				<td><a href="<%=enderecoArquivo%><%=rsReleases("arquivo")%>" target="_blank"><%=rsReleases("arquivo")%></a></td>
				<td><%=rsReleases("data")%></td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=10&act=2&id=<%=rsReleases("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=10&act=3&id=<%=rsReleases("id")%>'">Excluir</button></td>
			</tr>	        
		
	<%
	rsReleases.MoveNext()
	wend

	rsReleases.Close()
	set rsReleases = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Nome</th>
	        	<th>Arquivo</th>
	        	<th>Data</th>
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