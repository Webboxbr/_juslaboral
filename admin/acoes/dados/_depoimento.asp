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
	<div><small>Depoimentos</small></div>
	<h1>Incluir Depoimento</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=3&act=1">
		
		<div class="form-group">
			<label for="txtArquivo">Foto</label>	
    		<input name="txtArquivo" type="file" id="txtArquivo" accept="jpg|png" /> 
    		<p class="help-block">Tamanho recomendado: 173 x 198 pixels. Formato png ou jpg<br>
	    	O nome do arquivo não deve conter espaços, acentuação ou caracteres especiais.</p> 	
	  	</div>

	  	<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" />
	    </div>    
	    
	    <div class="form-group">  
		    <label for="txtTexto">Depoimento</label>
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
Set rsDepoimentos = Server.CreateObject("ADODB.Recordset")
rsDepoimentos.Open "select * from "&prefixoTabela&"depoimento where id="&id, Conexao
%>
	<div><small>Depoimentos</small></div>
	<h1>Editar Depoimento</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=3&act=2&id=<%=id%>">
		<div class="form-group">
			<label for="txtArquivo">Foto</label>
    		<input name="txtArquivo" type="file" id="txtArquivo" />
    		<p class="help-block">Tamanho recomendado: 173 x 198 pixels. Formato png ou jpg<br>
	    	O nome do arquivo não deve conter espaços, acentuação ou caracteres especiais.<br>
	    	Se desejar manter o banner existente, ignore este campo.</p> 
	  	</div>

	  	<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" value="<%=rsDepoimentos("nome")%>" class="form-control" />
	   	</div>	    
	    
	    <div class="form-group">
		    <label for="txtTexto">Depoimento</label>
		    <textarea name="txtTexto" id="txtTexto" class="form-control"><%=rsDepoimentos("texto")%></textarea>
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
	editSQL = "UPDATE "&prefixoTabela&"depoimento SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=3&act=1")


elseif act="4" then

	'**********************************************
	'   muda para destaque
	'**********************************************
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	'pega status atual do depoimento'
	Set rsDepoimentos = Server.CreateObject("ADODB.Recordset")
	rsDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' and id="&id, Conexao

	set addRs=Server.CreateObject("ADODB.recordset")
		if rsDepoimentos("destaque")="n" then	
			editSQL = "UPDATE "&prefixoTabela&"depoimento SET destaque='s', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		elseif rsDepoimentos("destaque")="s" then
			editSQL = "UPDATE "&prefixoTabela&"depoimento SET destaque='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		end if
	addRs.open editSQL, Conexao

	response.Redirect("_listas.asp?tipo=3&act=1")
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>