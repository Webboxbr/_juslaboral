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
	<div><small>Notícias</small></div>
	<h1>Incluir Notícias</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=2&act=1">
		
		<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" /></label>
	    </div>

	    <div class="row">
	    	<div class="col-xs-2">
			    <div class="form-group">
				    <label for="txtData">Data(*)</label>
				    <input type="text" name="txtData" id="txtData" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=dataHoje%>" maxlength="10" class="form-control" />
			    </div>
			</div>
	    </div>

	    <div class="form-group">
	  		<label for="txtLink">Link</label>
	    	<input type="url" name="txtLink" id="txtLink" class="form-control" /></label>
	    </div>

	    <div class="form-group">	      
	    	<label for="txtTexto">Notícia</label>
	    	<textarea name="txtTexto" id="txtTexto" class="form-control"></textarea>
	    	<script type="text/javascript">
		    	CKEDITOR.replace( "txtTexto", { });
	    	</script>
	    </div>

		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>		
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsNoticia = Server.CreateObject("ADODB.Recordset")
rsNoticia.Open "select * from "&prefixoTabela&"noticia where id="&id, Conexao

%>
	<div><small>Notícias</small></div>
	<h1>Incluir Notícias</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=2&act=2&id=<%=id%>">
		
		<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" value="<%=rsNoticia("nome")%>" />
	    </div>

	    <div class="row">
	    	<div class="col-xs-2">
			    <div class="form-group">
				    <label for="txtData">Data(*)</label>
				    <input type="text" name="txtData" id="txtData" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=rsNoticia("data")%>" maxlength="10" class="form-control" />
			    </div>
			</div>
		</div>

		<div class="form-group">
	  		<label for="txtLink">Link</label>
	    	<input type="url" name="txtLink" id="txtLink" class="form-control" value="<%=rsNoticia("link")%>" /></label>
	    </div>

	    <div class="form-group">	      
	    	<label for="txtTexto">Notícia</label>
	    	<textarea name="txtTexto" id="txtTexto" class="form-control"><%=rsNoticia("texto")%></textarea>
	    	<script type="text/javascript">
		    	CKEDITOR.replace( "txtTexto", { });
	    	</script>
	    </div>	    
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>		
	</form>
<%
elseif act="3" then

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"noticia SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=2&act=1")

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