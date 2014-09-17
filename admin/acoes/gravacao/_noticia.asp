<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	
	nome = request.Form("txtNome")
	data = request.Form("txtData")
	texto = request.Form("txtTexto")

	if data<>"" then
	myarray = split(data,"/")
	dia = myarray(0)
	mes = myarray(1)
	ano = myarray(2)
	else
	dia = Day(Date())
	mes = Month(Date())
	ano = Year(Date())
	end if
	

    datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"noticia (nome, data, dia, mes, ano, texto, ultima_alteracao) values ('"&nome&"','"&data&"','"&dia&"','"&mes&"','"&ano&"','"&texto&"','"&ultima_alteracao&"')"
	addRs.open addSQL, Conexao
			

	response.redirect("_listas.asp?tipo=2&act=1")

elseif act="2" then
	
	nome = request.Form("txtNome")
	data = request.Form("txtData")
	texto = request.Form("txtTexto")

	if data<>"" then
	myarray = split(data,"/")
	dia = myarray(0)
	mes = myarray(1)
	ano = myarray(2)
	else
	dia = Day(Date())
	mes = Month(Date())
	ano = Year(Date())
	end if
	

    datasys = now()
	ultima_alteracao = datasys&" - "&session("user")


	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"noticia SET nome='"&nome&"', data='"&data&"', dia='"&dia&"', mes='"&mes&"', ano='"&ano&"', texto='"&texto&"', ultima_alteracao='"&ultima_alteracao&"' WHERE id="&id
	addRs.open editSQL, Conexao
	

	response.Redirect("_listas.asp?tipo=2&act=1")

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