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
	<div><small>Not&iacute;cias</small></div>
	<h1>Incluir Not&iacute;cias</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=9&act=1">
		
		<label for="txtArquivo">Foto<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>	  	
	  	
	  	<label for="txtNome">T&iacute;tulo(*)<br />
	    <input type="text" name="txtNome" id="txtNome" /></label>

	    <label for="txtData">Data(*)<br />
	    <input type="text" name="txtData" id="txtData" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=dataHoje%>" maxlength="10" /></label>
	    
	    <label for="txtCategoria">Categoria(*)<br />
	    <select name="txtCategoria" id="txtCategoria">
	        <option value="0" selected="selected">Selecione a Categoria</option>
			<%
	        Set rsCategorias = Server.CreateObject("ADODB.Recordset")
	        rsCategorias.Open "select * from "&prefixoTabela&"categoria where visivel='s' and ativa='s' order by nome asc", Conexao
			while not rsCategorias.eof
			%>
	        <option value="<%=rsCategorias("id")%>"><%=rsCategorias("nome")%></option>
	        <%
			rsCategorias.MoveNext()
			wend
			rsCategorias.Close()
			set rsCategorias = nothing
			%>
	    </select>
	    </label>
	    
	    <label for="txtResumo">Resumo(*)<br />
	    <textarea name="txtResumo" id="txtResumo"></textarea></label>
	      
	    <label for="txtTexto">Not&iacute;cia(*)<br />
	    <textarea name="txtTexto" id="txtTexto"></textarea></label>
	    <script type="text/javascript">
		    CKEDITOR.replace( "txtTexto", { });
	    </script>

		<p>(*)Todos os campos s&atilde;o obrigat&oacute;rios.</p> 
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>		
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsNoticia = Server.CreateObject("ADODB.Recordset")
rsNoticia.Open "select * from "&prefixoTabela&"noticias where id="&id, Conexao

%>
	<div><small>Not&iacute;cias</small></div>
	<h1>Editar Not&iacute;cia</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=9&act=2&id=<%=id%>">
		
		<label for="txtArquivo">Foto<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>	  	
	  	
	  	<label for="txtNome">T&iacute;tulo(*)<br />
	    <input type="text" name="txtNome" id="txtNome" value="<%=rsNoticia("nome")%>" /></label>

	    <label for="txtData">Data(*)<br />
	    <input type="text" name="txtData" id="txtData" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=rsNoticia("data")%>" maxlength="10" /></label>
	    
	    <label for="txtCategoria">Categoria(*)<br />
	    <select name="txtCategoria" id="txtCategoria">
	    <%
	    'captura categoria corrente'
	    Set rsCategoriasAtual = Server.CreateObject("ADODB.Recordset")
	    rsCategoriasAtual.Open "select * from "&prefixoTabela&"categoria where id="&rsNoticia("idcategoria"), Conexao
	    %>
	        <option value="<%=rsCategoriasAtual("id")%>" selected="selected"><%=rsCategoriasAtual("nome")%></option>
			<%
	        Set rsCategorias = Server.CreateObject("ADODB.Recordset")
	        rsCategorias.Open "select * from "&prefixoTabela&"categoria where visivel='s' and ativa='s' order by nome asc", Conexao
			while not rsCategorias.eof
			%>
	        <option value="<%=rsCategorias("id")%>"><%=rsCategorias("nome")%></option>
	        <%
			rsCategorias.MoveNext()
			wend
			rsCategorias.Close()
			set rsCategorias = nothing
			%>
	    </select>
	    </label>
	    
	    <label for="txtResumo">Resumo(*)<br />
	    <textarea name="txtResumo" id="txtResumo"><%=rsNoticia("resumo")%></textarea></label>
	      
	    <label for="txtTexto">Not&iacute;cia(*)<br />
	    <textarea name="txtTexto" id="txtTexto"><%=rsNoticia("texto")%></textarea></label>
	    <script type="text/javascript">
		    CKEDITOR.replace( "txtTexto", { });
	    </script>

		<p>(*)Todos os campos s&atilde;o obrigat&oacute;rios.</p> 
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>		
	</form>
<%
elseif act="3" then

	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"noticias WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_listas.asp?tipo=9&act=1")

elseif act="4" then

	'**********************************************
	'   muda destaque da galeria de imagens
	'**********************************************

		'pega destaque anterior e transforma em não destaque
		Set rsNoticias = Server.CreateObject("ADODB.Recordset")
		rsNoticias.Open "select * from "&prefixoTabela&"noticias where destaque='s'", Conexao

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
		
		if rsNoticias.BOF = false then
			destaqueAnterior = rsNoticias("id")
			
			set addRsa=Server.CreateObject("ADODB.recordset")
			editSQLa = "UPDATE "&prefixoTabela&"noticias SET destaque='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&destaqueAnterior
			addRsa.open editSQLa, Conexao
			'pega destaque anterior e transforma em não destaque
		end if
		
	'define novo destaque
	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"noticias SET destaque='s', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.Redirect("_listas.asp?tipo=9&act=1")
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>