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
#txtDataNasc, #txtCidade, #txtOrigem, #txtEstreia, #txtJogos, #txtGols, #txtApelido {
	width:310px;
	padding: 5px 10px 5px 10px;
}

#formCadastro #txtCategoria {
	width:310px;
	padding: 5px 10px 5px 10px;
}
#formCadastro #txtPosicao {
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
	<div><small>Profissionais</small></div>
	<h1>Incluir Profissional</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=13&act=1">
		
		<label for="txtArquivo">Foto(*) (O tamanho deve ser 150 x 278 pixels).<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>

    	<label for="txtArquivo2">Foto Capa(*) (O tamanho deve ser 1080 x 387 pixels)<br />
    	<input name="txtArquivo2" type="file" id="txtArquivo2" /></label>
	  	
	  	<label for="txtNome">Nome(*)<br />
	    <input type="text" name="txtNome" id="txtNome" /></label>

	    <label for="txtApelido">Apelido(*)<br />
	    <input type="text" name="txtApelido" id="txtApelido" /></label>

		<label for="txtPosicao">Posi&ccedil;&atilde;o(*)<br />
		<select name="txtPosicao" id="txtPosicao">
			<option value="0" selected="selected">Selecione</option>
			<option value="1">Goleiro</option>
			<option value="2">Zagueiro</option>
			<option value="3">Laterais</option>
			<option value="4">Meio-Campo</option>
			<option value="5">Atacantes</option>
		</select></label>

		<label for="txtCategoria">Categoria(*)<br />
	    <select name="txtCategoria" id="txtCategoria">
	        <option value="0" selected="selected">Selecione a Categoria</option>
	        <option value="1">Profissional</option>
	        <option value="2">Sub 20</option>
	        <option value="3">Sub 17</option>
	        <option value="4">Sub 15</option>			
	    </select>
	    </label>

	    <label for="txtDataNasc">Data de Nascimento<br />
	    <input type="text" name="txtDataNasc" id="txtDataNasc" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" maxlength="10" /></label>

	    <label for="txtCidade">Cidade<br />
	    <input type="text" name="txtCidade" id="txtCidade" /></label>

	    <label for="txtOrigem">Origem<br />
	    <input type="text" name="txtOrigem" id="txtOrigem" /></label>

	    <label for="txtEstreia">Jogo de Estreia<br />
	    <input type="text" name="txtEstreia" id="txtEstreia" /></label>

	    <label for="txtJogos">Jogos<br />
	    <input type="text" name="txtJogos" id="txtJogos" /></label>

	    <label for="txtGols">Gols<br />
	    <input type="text" name="txtGols" id="txtGols" /></label>
	    
	    <label for="txtTexto">Hist&oacute;ria<br />
	    <textarea name="txtTexto" id="txtTexto"></textarea></label>
	    <script type="text/javascript">
		    CKEDITOR.replace( "txtTexto", { });
	    </script>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	


<%
elseif act="2" then
'recupera o registro pelo id'
Set rsProfissional = Server.CreateObject("ADODB.Recordset")
rsProfissional.Open "select * from "&prefixoTabela&"profissional where id="&id, Conexao
	
	Select Case rsProfissional("posicao")
		Case 1
			posicao = "Goleiro"
		Case 2
			posicao = "Zagueiro"
		Case 3
			posicao = "Lateral"
		Case 4
			posicao = "Meio-campo"
		Case 5
			posicao = "Atacante"
	End Select
%>
	<div><small>Profissionais</small></div>
	<h1>Editar Profissional</h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=13&act=2&id=<%=id%>">
		
		<label for="txtArquivo">Foto(*) (O tamanho deve ser 150 x 278 pixels).<br />
    	<input name="txtArquivo" type="file" id="txtArquivo" /></label>

    	<label for="txtArquivo2">Foto Capa(*) (O tamanho deve ser 1080 x 387 pixels)<br />
    	<input name="txtArquivo2" type="file" id="txtArquivo2" /></label>
	  	
	  	<label for="txtNome">Nome(*)<br />
	    <input type="text" name="txtNome" id="txtNome" value="<%=rsProfissional("nome")%>" /></label>

	    <label for="txtApelido">Apelido(*)<br />
	    <input type="text" name="txtApelido" id="txtApelido" value="<%=rsProfissional("apelido")%>" /></label>

		<label for="txtPosicao">Posi&ccedil;&atilde;o(*)<br />
		<select name="txtPosicao" id="txtPosicao">
			<option value="<%=rsProfissional("posicao")%>" selected="selected"><%=posicao%></option>
			<option value="1">Goleiro</option>
			<option value="2">Zagueiro</option>
			<option value="3">Laterais</option>
			<option value="4">Meio-Campo</option>
			<option value="5">Atacantes</option>
		</select></label>

		<label for="txtCategoria">Categoria(*)<br />
	    <select name="txtCategoria" id="txtCategoria">
	        <option value="<%=rsProfissional("idcategoria")%>" selected="selected"><%=rsProfissional("categoria")%></option>
	        <option value="1">Profissional</option>
	        <option value="2">Sub 20</option>
	        <option value="3">Sub 17</option>
	        <option value="4">Sub 15</option>			
	    </select>
	    </label>

	    <label for="txtDataNasc">Data de Nascimento<br />
	    <input type="text" name="txtDataNasc" id="txtDataNasc" onfocus="limpar(this);" onblur="escrever(this);" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" value="<%=rsProfissional("datanasc")%>" maxlength="10" /></label>

	    <label for="txtCidade">Cidade<br />
	    <input type="text" name="txtCidade" id="txtCidade" value="<%=rsProfissional("cidade")%>" /></label>

	    <label for="txtOrigem">Origem<br />
	    <input type="text" name="txtOrigem" id="txtOrigem" value="<%=rsProfissional("origem")%>" /></label>

	    <label for="txtEstreia">Jogo de Estreia<br />
	    <input type="text" name="txtEstreia" id="txtEstreia" value="<%=rsProfissional("jogoestreia")%>" /></label>

	    <label for="txtJogos">Jogos<br />
	    <input type="text" name="txtJogos" id="txtJogos" value="<%=rsProfissional("jogos")%>" /></label>

	    <label for="txtGols">Gols<br />
	    <input type="text" name="txtGols" id="txtGols" value="<%=rsProfissional("gols")%>" /></label>
	    
	    <label for="txtTexto">Hist&oacute;ria<br />
	    <textarea name="txtTexto" id="txtTexto"><%=rsProfissional("texto")%></textarea></label>
	    <script type="text/javascript">
		    CKEDITOR.replace( "txtTexto", { });
	    </script>
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
	</form>	
<%
elseif act="3" then

	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"profissional WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_listas.asp?tipo=13&act=1")

elseif act="4" then
%>
	<!-- não existe -->
<%	
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>