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
	<div><small>Galeria de Imagens</small></div>
	<h1>Incluir Imagem</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=5&act=1">
		<label for="txtArquivo">Foto(*) (Tamanho recomendado: 600 x 415 pixels)<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>
	  	
	  	<label for="txtNome">Nome<br />
	    <input type="text" name="txtNome" id="txtNome"/></label>

	    <label for="txtResumo">Resumo<br>
    	<textarea name="txtResumo" id="txtResumo"></textarea></label>	    
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsGaleriaDeImagens = Server.CreateObject("ADODB.Recordset")
rsGaleriaDeImagens.Open "select * from "&prefixoTabela&"galeriaimagens where id="&id, Conexao

%>
	<div><small>Galeria de Imagens</small></div>
	<h1>EDITA Imagem</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=5&act=2&id=<%=id%>">
		<label for="txtArquivo">Foto(*) (Tamanho recomendado: 600 x 415 pixels)<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>	
	  	
	  	<label for="txtNome">Nome<br />
	    <input type="text" name="txtNome" id="txtNome" value="<%=rsGaleriaDeImagens("nome")%>"/></label>

	    <label for="txtResumo">Resumo<br>
    	<textarea name="txtResumo" id="txtResumo"><%=rsGaleriaDeImagens("resumo")%></textarea></label>	    
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>
<%
elseif act="3" then
	
	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"galeriaimagens WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_listas.asp?tipo=5&act=1")

elseif act="4" then

'**********************************************
'   muda destaque da galeria de imagens
'**********************************************

	'pega destaque anterior e transforma em não destaque
	Set rsGaleriaImagens = Server.CreateObject("ADODB.Recordset")
	rsGaleriaImagens.Open "select * from "&prefixoTabela&"galeriaimagens where destaque='s'", Conexao

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	
	if rsGaleriaImagens.BOF = false then
		destaqueAnterior = rsGaleriaImagens("id")
		
		set addRsa=Server.CreateObject("ADODB.recordset")
		editSQLa = "UPDATE "&prefixoTabela&"galeriaimagens SET destaque='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&destaqueAnterior
		addRsa.open editSQLa, Conexao
		'pega destaque anterior e transforma em não destaque
	end if
	
	

'define novo destaque
set addRs=Server.CreateObject("ADODB.recordset")
editSQL = "UPDATE "&prefixoTabela&"galeriaimagens SET destaque='s', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
addRs.open editSQL, Conexao

	response.Redirect("_listas.asp?tipo=5&act=1")	
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>