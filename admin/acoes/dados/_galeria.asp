<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<div><small>Galeria de Fotos</small></div>
	<h1>Incluir foto</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=4&act=1">
		
		<div class="form-group">
			<label for="txtArquivo">Foto</label>
    		<input name="txtArquivo" type="file" id="txtArquivo" />
    		<p>Tamanho recomendado para a foto: 800 x 600 pixels</p>
	  	</div>	  		    
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsGaleria = Server.CreateObject("ADODB.Recordset")
rsGaleria.Open "select * from "&prefixoTabela&"galeria where id="&id, Conexao

%>
	<div><small>Galeria de Fotos</small></div>
	<h1>Editar foto</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=4&act=2&id=<%=id%>">
		
		<div class="form-group">
			<label for="txtArquivo">Foto</label>
    		<input name="txtArquivo" type="file" id="txtArquivo" />
    		<p>Tamanho recomendado para a foto: 800 x 600 pixels</p>
	  	</div>	     
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>
<%
elseif act="3" then
	
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"galeria SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=4&act=1")

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