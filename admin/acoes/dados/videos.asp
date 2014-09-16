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
	<div><small>Galeria de V&iacute;deos</small></div>
	<h1>Incluir V&iacute;deo</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=6&act=1">
		<label for="txtArquivo">Foto<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>
	  	
	  	<label for="txtVideo">V&iacute;deo(*) (copie e cole apenas o link que aparece no embed do v&iacute;deo no youtube)<br />
	    <input type="text" name="txtVideo" id="txtVideo"/></label>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsGaleriaDeVideos = Server.CreateObject("ADODB.Recordset")
rsGaleriaDeVideos.Open "select * from "&prefixoTabela&"galeriavideos where id="&id, Conexao

%>
	<div><small>Galeria de V&iacute;deos</small></div>
	<h1>Editar V&iacute;deo</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=6&act=2&id=<%=id%>">
		<label for="txtArquivo">Foto<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>	
	  	
	  	<label for="txtVideo">V&iacute;deo(*) (copie e cole apenas o link que aparece no embed do v&iacute;deo no youtube)<br />
	    <input type="text" name="txtVideo" id="txtVideo" value="<%=rsGaleriaDeVideos("video")%>"/></label>   
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>
<%
elseif act="3" then
	
	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"galeriavideos WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_listas.asp?tipo=6&act=1")

elseif act="4" then

'**********************************************
'   muda destaque da galeria de imagens
'**********************************************
	'pega destaque anterior e transforma em não destaque
	Set rsGaleriaDeVideos = Server.CreateObject("ADODB.Recordset")
	rsGaleriaDeVideos.Open "select * from "&prefixoTabela&"galeriavideos where destaque='s'", Conexao

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	
	if rsGaleriaDeVideos.BOF = false then
		destaqueAnterior = rsGaleriaDeVideos("id")
		
		set addRsa=Server.CreateObject("ADODB.recordset")
		editSQLa = "UPDATE "&prefixoTabela&"galeriavideos SET destaque='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&destaqueAnterior
		addRsa.open editSQLa, Conexao
		'pega destaque anterior e transforma em não destaque
	end if
	
'define novo destaque
set addRs=Server.CreateObject("ADODB.recordset")
editSQL = "UPDATE "&prefixoTabela&"galeriavideos SET destaque='s', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
addRs.open editSQL, Conexao

	response.Redirect("_listas.asp?tipo=6&act=1")	
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>