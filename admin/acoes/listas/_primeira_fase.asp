<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Provas</small></div>
	<h1 class="desloca-esq">Lista de provas 1ª fase</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=5&act=1'">Incluir Região</button></div>
	<div class="clear"></div>

	<%
	Set rsPrimeiraFase = Server.CreateObject("ADODB.Recordset")
	rsPrimeiraFase.Open "select * from "&prefixoTabela&"primeira_fase where ativo='s' ", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>				
	        	<th>Nome</th>
	        	<th width="200px">Arquivos</th>
	        	<th width="80px">Editar</th>
	        	<th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsPrimeiraFase.eof

	Set contaArquivos = Conexao.execute("SELECT COUNT(*) FROM "&prefixoTabela&"arquivo_1 where idFase="&rsPrimeiraFase("id")&" and ativo='s'")
    resultadoArquivos = cint(contaArquivos.fields(0))

	%>    		

			<tr class="gradeA">
				<td><%=rsPrimeiraFase("nome")%></td>
				<td>
					<ul class="nav nav-pills nav-stacked">
					  <li class="active">
					    <a href="_dados.asp?tipo=8&act=1&id=<%=rsPrimeiraFase("id")%>">
					      <span class="badge pull-right"><%=resultadoArquivos%></span>
					      Incluir Arquivos
					    </a>
					  </li>
					</ul>
				</td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=5&act=2&id=<%=rsPrimeiraFase("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=5&act=3&id=<%=rsPrimeiraFase("id")%>'">Excluir</button></td>
			</tr>	        
		
	<%
	rsPrimeiraFase.MoveNext()
	wend

	rsPrimeiraFase.Close()
	set rsPrimeiraFase = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Nome</th>
	        	<th>Arquivos</th>
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