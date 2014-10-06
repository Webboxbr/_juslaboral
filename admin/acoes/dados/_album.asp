<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<div><small>Álbum de Fotos</small></div>
	<h1>Incluir álbum</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=4&act=1">
	
		<div class="desloca-esq" style="width:400px;">
			<div class="form-group">
				<label for="txtNome">Nome</label>
				<input type="text" name="txtNome" id="txtNome" class="form-control" ng-model="nome" />
			</div>

			<div class="form-group">	      
				<label for="txtTexto">Descrição</label>
				<textarea name="txtTexto" id="txtTexto" class="form-control" ng-model="texto"></textarea>	    	
			</div>

			<button type="submit" class="btn btn-primary">Salvar</button>
			<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
		</div>
		<div class="desloca-dir box-demo" style="margin-top:-80px;">			
			<ul class="box-album">
	            <li class="botao">
	              <p>{{ nome }}</p>
	              <p>{{ texto }}</p>
	            </li>
            </ul>

		</div>
		<div class="clear"></div>
	

		
	</form>	
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsAlbum = Server.CreateObject("ADODB.Recordset")
rsAlbum.Open "select * from "&prefixoTabela&"album where id="&id, Conexao

%>
	<div><small>Álbum de Fotos</small></div>
	<h1>Incluir álbum</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=4&act=2&id=<%=id%>">
		
		

		<div class="desloca-esq" style="width:400px;">
			<div class="form-group">
				<label for="txtNome">Nome</label>
				<div class="input-group">
				  <span class="input-group-addon">Atual</span>
				  <input type="text" name="txtNomeAtual" id="txtNomeAtual" readonly value="<%=rsAlbum("nome")%>" class="form-control">
				</div>
				
				<input type="text" name="txtNome" id="txtNome" class="form-control" ng-model="nome" />								
			</div>

			<div class="form-group">	      
				<label for="txtTexto">Descrição</label>
				<div class="input-group">
				  <span class="input-group-addon">Atual</span>
				  <textarea name="txtTextoAtual" id="txtTextoAtual" class="form-control" readonly><%=rsAlbum("texto")%></textarea>
				</div>			
				
				<textarea name="txtTexto" id="txtTexto" class="form-control" ng-model="texto"><%=rsAlbum("texto")%></textarea>					    	
			</div>

			<button type="submit" class="btn btn-primary">Salvar</button>
			<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
		</div>
		<div class="desloca-dir box-demo" style="margin-top:20px;">			
			<ul class="box-album">
	            <li class="botao">
	              <p>{{ nome }}</p>
	              <p>{{ texto }}</p>
	            </li>
            </ul>

		</div>
		<div class="clear"></div>

	</form>
<%
elseif act="3" then
	
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"album SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
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