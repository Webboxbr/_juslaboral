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
	<div><small>Temporadas</small></div>
	<h1>ADICIONAR TEMPORADA</h1>
	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=1&act=1">
	  	
	    <div class="desloca-esq" style="width:330px;">

	    	<label for="txtNome">T&iacute;tulo(*)<br />
	    	<input type="text" name="txtNome" id="txtNome"/></label>
    	
    		<label for="txtCategoria">Categoria(*)<br />
		    <select name="txtCategoria" id="txtCategoria">
		        <option value="0" selected="selected">Selecione a categoria</option>
				<option value="1">Profissional</option>
				<option value="2">Sub 20</option>
				<option value="3">Sub 17</option>
				<option value="4">Sub 15</option>
		    </select>
		    </label>
		    
		    <label for="txtResumo">Resumo(*)<br />
		    <textarea name="txtResumo" id="txtResumo"></textarea></label>
	    </div>
	      
		<div class="desloca-dir" style="width:380px;">
			<h1>Selecione uma imagem da Galeria para a foto do Elenco:</h1>
			<section class="box-galeria">
				<%
				Set rsGaleria = Server.CreateObject("ADODB.Recordset")
				rsGaleria.Open "select * from "&prefixoTabela&"galeriaimagens order by id desc", Conexao

					while not rsGaleria.eof
					%>
						<div class="desloca-esq alling-central boxFotos">
						  <input type="radio" name="foto" id="<%=rsGaleria("id")%>" value="<%=rsGaleria("id")%>" />
						  <label for="<%=rsGaleria("id")%>"><img src="<%=enderecoGaleriaThumb%><%=rsGaleria("foto")%>" width="70" height="50" alt="" /></label>
						</div>
					<%
					rsGaleria.MoveNext()
					wend

				rsGaleria.Close()
				set rsGaleria = nothing
				%>
				<div class="clear"></div>
			</section><!-- fecha box da galeria -->
		</div>
		<div class="clear"></div>

		<p>(*)Campos obrigatórios.</p>
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button> 
		
	</form>
<%
elseif act="2" then
'recupera o campeonato pelo id'
Set rsCampeonatos = Server.CreateObject("ADODB.Recordset")
rsCampeonatos.Open "select * from "&prefixoTabela&"campeonatos where id="&id, Conexao

Select Case rsCampeonatos("categoria")
   Case 1
      nomeCategoria="Profissional"
   Case 2
      nomeCategoria="Sub 20"
   Case 3
   	  nomeCategoria="Sub 17"
   Case 4
      nomeCategoria="Sub 15"
End Select

%>
	<div><small>Temporadas</small></div>
	<h1>EDITA TEMPORADA</h1>
	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=1&act=2&id=<%=rsCampeonatos("id")%>">
	  	
	  	<div class="desloca-esq" style="width:330px;">

	  		<label for="txtNome">T&iacute;tulo(*)<br />
	    	<input type="text" name="txtNome" id="txtNome" value="<%=rsCampeonatos("nome")%>"/></label>
    	
    		<label for="txtCategoria">Categoria(*)<br />
		    <select name="txtCategoria" id="txtCategoria">
		        <option value="<%=rsCampeonatos("categoria")%>" selected="selected"><%=nomeCategoria%></option>
				<option value="1">Profissional</option>
				<option value="2">Sub 20</option>
				<option value="3">Sub 17</option>
				<option value="4">Sub 15</option>
		    </select>
		    </label>
		    
		    <label for="txtResumo">Resumo(*)<br />
		    <textarea name="txtResumo" id="txtResumo"><%=rsCampeonatos("resumo")%></textarea></label>
	    </div>
	     
		<div class="desloca-dir" style="width:380px;">	      
			<h1>Selecione uma imagem da Galeria para a foto do Elenco:</h1>
			<section class="box-galeria">
				<%
				Set rsGaleria = Server.CreateObject("ADODB.Recordset")
				rsGaleria.Open "select * from "&prefixoTabela&"galeriaimagens order by id desc", Conexao
					
					while not rsGaleria.eof
					%>
						<div class="desloca-esq alling-central boxFotos">
						  <input type="radio" name="foto" id="<%=rsGaleria("id")%>" value="<%=rsGaleria("id")%>" />
						  <label for="<%=rsGaleria("id")%>"><img src="<%=enderecoGaleriaThumb%><%=rsGaleria("foto")%>" width="70" height="50" alt="" /></label>
						</div>
					<%
					rsGaleria.MoveNext()
					wend

				rsGaleria.Close()
				set rsGaleria = nothing
				%>
				<div class="clear"></div>
			</section><!-- fecha box da galeria -->
		</div>
		<div class="clear"></div>

		<p>(*)Campos obrigatórios.</p>    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button> 
	</form>
<%
elseif act="3" then
%>
	<!-- não existe excluir campeonatos -->
<%
elseif act="4" then
'recupera o campeonato pelo id'
Set rsCampeonatos = Server.CreateObject("ADODB.Recordset")
rsCampeonatos.Open "select * from "&prefixoTabela&"campeonatos where id="&id, Conexao
	if rsCampeonatos("ativo")="s" then
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"campeonatos SET ativo='n' WHERE id="&id
		addRs.open editSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"campeonatos SET ativo='s' WHERE id="&id
		addRs.open editSQL, Conexao
	end if
	response.Redirect("_listas.asp?tipo=1&act=1")	
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>