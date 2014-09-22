<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<div><small>Lista de Banners</small></div>
	<h1>Incluir Banner</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=1&act=1">
		<div class="form-group">
			<label for="txtArquivo">Banner(*) </label>
	    	<input name="txtArquivo" type="file" id="txtArquivo" accept="jpg|png" />
	    	<p class="help-block">Tamanho recomendado: 1600 x 530 pixels. Formato png ou jpg<br>
	    	O nome do arquivo não deve conter espaços, acentuação ou caracteres especiais.</p>	    	
    	</div>
	  	
	  	<div class="form-group">
	  		<label for="txtLink">Link</label>
	    	<input type="url" name="txtLink" id="txtLink" class="form-control" oninvalid="setCustomValidity('A URL deve estar completa, por exemplo: http://www.g1.com.br')" onchange="try{setCustomValidity('')}catch(e){}"/>
	    	<p class="help-block">Exemplo de link: "http://www.g1.com.br"</p>
	    </div>



		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsBanner = Server.CreateObject("ADODB.Recordset")
rsBanner.Open "select * from "&prefixoTabela&"banner where id="&id, Conexao

%>
	<div><small>Lista de Banners</small></div>
	<h1>Edita Banner</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=1&act=2&id=<%=id%>">
		<div class="form-group">
			<label for="txtArquivo">Banner</label>
    		<input name="txtArquivo" type="file" id="txtArquivo" />
    		<p class="help-block">Tamanho recomendado: 1600 x 530 pixels. Formato png ou jpg<br>
	    	O nome do arquivo não deve conter espaços, acentuação ou caracteres especiais.<br>
	    	Se desejar manter o banner existente, ignore este campo.</p>
	  	</div>

	  	<div class="form-group">
	  		<label for="txtLink">Link</label>	
	    	<input type="url" name="txtLink" id="txtLink" value="<%=rsBanner("link")%>"  class="form-control" oninvalid="setCustomValidity('A URL deve estar completa, por exemplo: http://www.g1.com.br')" onchange="try{setCustomValidity('')}catch(e){}" />
	    	<p class="help-block">Exemplo de link: "http://www.g1.com.br"</p>	        
	    </div>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>
<%
elseif act="3" then
	
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"banner SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_listas.asp?tipo=1&act=1")

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