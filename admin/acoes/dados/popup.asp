<style type="text/css">

.box-galeria {
	width: 350px;
	height: 200px;
	overflow: scroll;
	border:solid 1px #ededed;
	padding:10px;
}
#formCadastro #txtNome {
	width:310px;
	padding: 5px 10px 5px 10px;
}
#formCadastro #txtResumo {
	resize:none;
	width:330px;
	height:212px;
}
#formCadastro #txtCategoria {
	width:310px;
	padding: 5px 10px 5px 10px;
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
%>
	<div><small>Lista de Popups</small></div>
	<h1>Incluir Popup</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=16&act=1">
		<label for="txtArquivo">Popup(*) (Tamanho recomendado: 500 x 280 pixels)<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>
	  	
	  	<!--<label for="txtLink">Link<br />
	    <input type="url" name="txtLink" id="txtLink"/></label>-->
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsPopup = Server.CreateObject("ADODB.Recordset")
rsPopup.Open "select * from "&prefixoTabela&"popup where id="&id, Conexao

%>
	<div><small>Lista de Popups</small></div>
	<h1>Edita Popup</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=16&act=2&id=<%=id%>">
		<label for="txtArquivo">Popup(*) (Tamanho recomendado: 500 x 280 pixels)<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>	
	  	
	  	<!--<label for="txtLink">Link<br />
	    <input type="url" name="txtLink" id="txtLink" value="<%=rsPopup("link")%>"/></label>-->
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>
<%
elseif act="3" then
	
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"popup SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=16&act=1")

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