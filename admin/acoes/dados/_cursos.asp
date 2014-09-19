<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then				
%>
	<div><small>Cursos</small></div>
	<h1>Incluir Curso</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=11&act=1">
		
		<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" /></label>
	    </div>

	    <div class="form-group">	      
	    	<label for="txtResumo">Resumo</label>
	    	<textarea name="txtResumo" id="txtResumo" class="form-control"></textarea>	    	
	    </div>	    

	    <div class="form-group">	      
	    	<label for="txtTexto">Texto</label>
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
Set rsCursos = Server.CreateObject("ADODB.Recordset")
rsCursos.Open "select * from "&prefixoTabela&"cursos where id="&id, Conexao

%>
	<div><small>Cursos</small></div>
	<h1>Incluir Curso</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=11&act=2&id=<%=id%>">
		
		<div class="form-group">
	  		<label for="txtNome">Nome</label>
	    	<input type="text" name="txtNome" id="txtNome" class="form-control" value="<%=rsCursos("nome")%>" /></label>
	    </div>

	    <div class="form-group">	      
	    	<label for="txtResumo">Resumo</label>
	    	<textarea name="txtResumo" id="txtResumo" class="form-control"><%=rsCursos("resumo")%></textarea>	    	
	    </div>	    

	    <div class="form-group">	      
	    	<label for="txtTexto">Texto</label>
	    	<textarea name="txtTexto" id="txtTexto" class="form-control"><%=rsCursos("texto")%></textarea>
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
	editSQL = "UPDATE "&prefixoTabela&"cursos SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=11&act=1")

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