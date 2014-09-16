<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then

	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upFotoGaleria

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtnome = Upload.Form("txtNome")
		txtcategoria = Upload.Form("txtCategoria")
		txtresumo = Upload.Form("txtResumo")
		txttexto = Upload.Form("txtTexto")
		dataHoje = Upload.Form("txtData")

		dia = Day(Date())
		mes = Month(Date())
		ano = Year(Date())

		'Debug
		'response.write("Data: "&dataHoje&"<br>")
		'response.end()	

		
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------
		'Instancia o componente na memória
		SET AspJpeg = Server.CreateObject("Persits.Jpeg")
		'Define o caminho da imagem a ser redimensionada

			imagem = upFotoGaleria&"\"&txtArquivo
			
		'Carrega a imagem
		AspJpeg.Open imagem

		'Define a largura
		L = 340
		'Redimensiona, preservando as proporções
		AspJpeg.Width = L
		AspJpeg.Height = AspJpeg.OriginalHeight * L / AspJpeg.OriginalWidth

		'Esse método é opcional, usado para melhorar o visual da imagem.
		AspJpeg.Sharpen 1, 150

		'Cria um Thumbnail e o grava no caminho abaixo.		
		AspJpeg.Save upFotoGaleriaThumb&"\"&txtArquivo
		
		'Para enviar o thumbnail para o browser do visitante, utilize o método SendBinary .
		'Response.Write AspJpeg.SendBinary
		'Remove as referências do componente da memória
		SET AspJpeg = Nothing
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------^

	'captura categoria corrente'
    Set rsCategoriasAtual = Server.CreateObject("ADODB.Recordset")
    rsCategoriasAtual.Open "select * from "&prefixoTabela&"categoria where id="&txtcategoria, Conexao
    categoriaNome = rsCategoriasAtual("nome")

    datasys = now()
	ultima_alteracao = datasys&" - "&session("user")



	if txtArquivo="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"noticias (nome, resumo, texto, categoria, idcategoria, data, dia, mes, ano, ultima_alteracao) values ('"&txtnome&"','"&txtresumo&"','"&txttexto&"','"&categoriaNome&"','"&txtcategoria&"','"&dataHoje&"','"&dia&"','"&mes&"','"&ano&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"noticias (nome, resumo, texto, foto, categoria, idcategoria, data, dia, mes, ano, ultima_alteracao) values ('"&txtnome&"','"&txtresumo&"','"&txttexto&"','"&txtArquivo&"','"&categoriaNome&"','"&txtcategoria&"','"&dataHoje&"','"&dia&"','"&mes&"','"&ano&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	end if	

	response.redirect("_listas.asp?tipo=9&act=1")

elseif act="2" then
	
	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upFotoGaleria

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtnome = Upload.Form("txtNome")
		txtcategoria = Upload.Form("txtCategoria")
		txtresumo = Upload.Form("txtResumo")
		txttexto = Upload.Form("txtTexto")
		dataHoje = Upload.Form("txtData")

		'dia = Day(Date())
		'mes = Month(Date())
		'ano = Year(Date())

		if dataHoje<>"" then
		myarray = split(dataHoje,"/")
		dia = myarray(0)
		mes = myarray(1)
		ano = myarray(2)
		else
		dia = Day(Date())
		mes = Month(Date())
		ano = Year(Date())
		end if


		'Debug
		'response.write("Nome da imagem: "&txtArquivo&"<br>")
		'response.end()	

		
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------
		'Instancia o componente na memória
		SET AspJpeg = Server.CreateObject("Persits.Jpeg")
		'Define o caminho da imagem a ser redimensionada

			imagem = upFotoGaleria&"\"&txtArquivo
			
		'Carrega a imagem
		AspJpeg.Open imagem

		'Define a largura
		L = 340
		'Redimensiona, preservando as proporções
		AspJpeg.Width = L
		AspJpeg.Height = AspJpeg.OriginalHeight * L / AspJpeg.OriginalWidth

		'Esse método é opcional, usado para melhorar o visual da imagem.
		AspJpeg.Sharpen 1, 150

		'Cria um Thumbnail e o grava no caminho abaixo.		
		AspJpeg.Save upFotoGaleriaThumb&"\"&txtArquivo
		
		'Para enviar o thumbnail para o browser do visitante, utilize o método SendBinary .
		'Response.Write AspJpeg.SendBinary
		'Remove as referências do componente da memória
		SET AspJpeg = Nothing
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------^

	'captura categoria corrente'
    Set rsCategoriasAtual = Server.CreateObject("ADODB.Recordset")
    rsCategoriasAtual.Open "select * from "&prefixoTabela&"categoria where id="&txtcategoria, Conexao
    categoriaNome = rsCategoriasAtual("nome")

    datasys = now()
	ultima_alteracao = datasys&" - "&session("user")


	if txtArquivo="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"noticias SET nome='"& txtnome &"', resumo='"& txtresumo &"', texto='"& txttexto &"', categoria='"& categoriaNome &"', idcategoria='"& txtcategoria &"', data='"& dataHoje &"', dia='"& dia &"', mes='"& mes &"', ano='"& ano &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		addRs.open editSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"noticias SET nome='"& txtnome &"', resumo='"& txtresumo &"', texto='"& txttexto &"', foto='"& txtArquivo &"', categoria='"& categoriaNome &"', idcategoria='"& txtcategoria &"', data='"& dataHoje &"', dia='"& dia &"', mes='"& mes &"', ano='"& ano &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		addRs.open editSQL, Conexao
	end if

	response.Redirect("_listas.asp?tipo=9&act=1")

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