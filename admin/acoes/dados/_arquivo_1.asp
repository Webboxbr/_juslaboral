<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
fase = request.querystring("fase")
%>
	<div><small>Provas</small></div>
	<h1>Incluir arquivo 1ª fase</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=8&act=1">
		
		<div class="form-group">
			<label for="txtArquivo">Arquivo</label>
    		<input name="txtArquivo" type="file" id="txtArquivo" />    		
	  	</div>

	  	<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" /></label>
	    </div>

	  	<input type="hidden" name="idFase" value="<%=id%>">
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	


<%
	Set rsArquivos = Server.CreateObject("ADODB.Recordset")
	rsArquivos.Open "select * from "&prefixoTabela&"arquivo_1 where ativo='s' and idFase="&id&" order by id desc", Conexao
%>


	<h2>Arquivos incluidos</h2>


	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Nome</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsArquivos.eof
	%>    		
			<tr class="gradeA">
				<td><%=rsArquivos("nome")%></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=8&act=3&id=<%=rsArquivos("id")%>&idC=<%=id%>'">Excluir</button></td>
			</tr>		
	<%
	rsArquivos.MoveNext()
	wend
	rsArquivos.Close()
	set rsArquivos = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Nome</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</tfoot>
	</table>


<%
elseif act="2" then
%>
	<!-- não existe listagem nesse caso -->	
<%
elseif act="3" then

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"arquivo_1 SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_dados.asp?tipo=8&act=1&id="&idC)

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