<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then		
%>
	<div><small>2ª Fase</small></div>
	<h1>Incluir Região</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=6&act=1">
		
		<div class="form-group">
	  		<label for="txtNome">Nome(*)</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" />
	    </div>

	    <button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsPrimeiraFase = Server.CreateObject("ADODB.Recordset")
rsPrimeiraFase.Open "select * from "&prefixoTabela&"segunda_fase where id="&id, Conexao

%>
	<div><small>2ª Fase</small></div>
	<h1>Incluir Região</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=6&act=2&id=<%=id%>">
			  	
	  	<div class="form-group">
	  		<label for="txtNome">Nome(*)</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" value="<%=rsPrimeiraFase("nome")%>" />
	    </div>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="3" then

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"segunda_fase SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=6&act=1")

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