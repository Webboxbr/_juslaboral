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
	<!-- não existe esse caso -->
<%
elseif act="2" then
'recupera o registro pelo id'
Set rsProgramacao = Server.CreateObject("ADODB.Recordset")
rsProgramacao.Open "select * from "&prefixoTabela&"programacao WHERE id="&id, Conexao
%>

	<div><small>Programa&ccedil;&atilde;o da Semana</small></div>
	<h1>Editar Programa&ccedil;&atilde;o</h1>

	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=12&act=2&id=<%=id%>">
		
		<label for="txtTexto">
	    <textarea name="txtTexto" id="txtTexto"><%=rsProgramacao("texto")%></textarea></label>
	    <script type="text/javascript">
		    CKEDITOR.replace( "txtTexto", { });
	    </script>
	    
	    <button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>

	</form>	

<%
elseif act="3" then
%>
	<!-- não existe esse caso -->
<%
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