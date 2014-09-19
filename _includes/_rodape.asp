	<section id="rodape">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-3">
 					
 					<h4><span id="ico11"></span>Menu</h4>
 					<br>
 					<ul>
 						<li><a href="quem_somos.asp">Juslaboral</a></li>
 						<li><a href="professores.asp">Professores</a></li>
 						<li><a href="cursos.asp">Cursos</a></li>
 						<li><a href="provas.asp">Provas</a></li>
 						<li><a href="galeria.asp">Galerias</a></li>
 						<li><a href="depoimentos.asp">Depoimentos</a></li>
 						<li><a href="contato.asp">Contato</a></li>
 					</ul>
 					
 				</div>
 				<div class="col-xs-12 col-sm-12 col-md-3">
 					
 					<h4><span id="ico12"></span>Cursos</h4>
 					<br>
 					<ul>
 						<li><a href="cursos.asp">Apresentação</a></li>
						<%
						Set rsOutrosCursos = Server.CreateObject("ADODB.Recordset")
						rsOutrosCursos.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by nome asc", Conexao
						while not rsOutrosCursos.eof
						%>
						<li><a href="cursos_interna.asp?id=<%=rsOutrosCursos("id")%>"><%=rsOutrosCursos("nome")%></a></li>
						<%
						rsOutrosCursos.MoveNext()
						wend
						rsOutrosCursos.Close()
						set rsOutrosCursos = nothing            
						%>
 					</ul>
 					
 				</div>
 				<div class="col-xs-12 col-sm-12 col-md-6">
 					<h4><span id="ico13"></span></h4>
 					<div class="centraliza">
 						<div class="fb-like-box" data-href="https://www.facebook.com/cursojuslaboral" data-colorscheme="light" data-show-faces="false" data-header="true" data-stream="true" data-show-border="true" data-height="382" data-width="400"></div>

 						<div class="fb-like" data-href="https://www.facebook.com/cursojuslaboral" data-layout="box_count" data-action="like" data-show-faces="true" data-share="false"></div>
 					</div>
 				</div>
 			</div>
 		</div>
 	</section>
 	<footer id="footer">
 		<div class="container">		
 			<div class="row">
 				<div class="col-xs-12">
 					<p><b>Curso Juslaboral</b> - Copyght © 2014 - Todos os direitos reservados a Curso Juslaboral Ltda.<br>
 					contato@cursojuslaboral.com.br</p>
 					<a href="http://www.webbox.com.br" target="_blank"><img src="images/logo_webbox.gif" alt="Webbox"></a>
 				</div>
 			</div>
 		</div>
 	</footer> <!-- footer /-->




<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-3080357-4', 'auto');
  ga('send', 'pageview');

</script> 	