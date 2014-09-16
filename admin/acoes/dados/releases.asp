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
		dia = Day(Date())
		mes = Month(Date())
		ano = Year(Date())
		dataHoje = dia&"/"&mes&"/"&ano
%>
	<div><small>Releases</small></div>
	<h1>Incluir Release</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=10&act=1">
			  	
	  	<label for="txtNome">Nome(*)<br />
	    <input type="text" name="txtNome" id="txtNome"/></label>

	    <label for="txtData">Data(*)<br />
	    <input type="text" name="txtData" id="txtData" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=dataHoje%>" maxlength="10" /></label>

	    <label for="txtArquivo">Release(*) (formato recomendado .pdf)<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>

    	<p>(*)Todos os campos s&atilde;o obrigat&oacute;rios.</p>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsReleases = Server.CreateObject("ADODB.Recordset")
rsReleases.Open "select * from "&prefixoTabela&"releases where id="&id, Conexao

%>
	<div><small>Releases</small></div>
	<h1>Editar Release</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=10&act=2&id=<%=id%>">
			  	
	  	<label for="txtNome">Nome(*)<br />
	    <input type="text" name="txtNome" id="txtNome" value="<%=rsReleases("nome")%>" /></label>

	    <label for="txtData">Data(*)<br />
	    <input type="text" name="txtData" id="txtData" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=rsReleases("data")%>" maxlength="10" /></label>

	    <label for="txtArquivo">Release(*) (formato recomendado .pdf)<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>

    	<p>(*)Todos os campos s&atilde;o obrigat&oacute;rios.</p>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="3" then

	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"releases WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_listas.asp?tipo=10&act=1")

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