<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Webbox">

	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<link rel="stylesheet" type="text/css" href="bxslider/jquery.bxslider.css">	

	<!-- Fav and touch icons -->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">

	<meta name="application-name" content="Juslaboral"/>

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

 	<title>Juslaboral</title>


<style type="text/css">

.hidden1 { 
  height: 90px; width: 100%; overflow: hidden;
  padding-top: 10px;
  padding-bottom: 10px;
}
.content1 {
  border-top:solid 1px #ddd;
  border bottom:solid 1px #ddd;
  padding-top: 10px;
  padding-bottom: 10px;
}

.panel { position: relative; }


.toggle { background: #fff; cursor: pointer;
padding-top: 10px;
  padding-bottom: 10px;}

</style>


</head>
<body> 

<!-- facebook Caixa Curtir /-->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&appId=332361930233010&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

 	<!--#include file="_includes/_header.asp" -->

 	
 	<section id="conteudo" class="internas">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-12">
 					<h2 class="cinza"><span id="ico23"></span>Depoimentos</h2>
 					<p>UT ENIM AD MINIM VENIAM, ULLAMCO LABORIS  EX EA COMMODO CONSEQUAT.</p>
 				</div>				
 			</div> 			
 		</div>
 	</section> <!-- conteudo /-->

  <section id="depoimentos">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">          
          <p class="dep-texto-maior">Confira o depoimento de quem já participou do curso</p>
          <div class="centraliza"><img src="images/chave_depoimentos.png" alt=""></div>
        </div>        
      </div>
      <div class="row" style="margin-top:20px;">
        <div class="col-xs-12 col-sm-12 col-md-4 it centraliza botao" data-toggle="modal" data-target="#myModal">
          <div class="cap-foto">
            <img class="mask" src="images/mask_exagono.png" alt="">
            <img class="foto" src="images/foto_dep_1.png" alt="">
          </div>          
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><b>Aline Mello- DF</b></p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 it centraliza botao" data-toggle="modal" data-target="#myModal">
          <div class="cap-foto">
            <img class="mask" src="images/mask_exagono.png" alt="">
            <img class="foto" src="images/foto_dep_2.png" alt="">
          </div>          
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><b>Victor Gonçalves Guimerães - PR</b></p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 it centraliza botao" data-toggle="modal" data-target="#myModal">
          <div class="cap-foto">
            <img class="mask" src="images/mask_exagono.png" alt="">
            <img class="foto" src="images/foto_dep_3.png" alt="">
          </div> 
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><b>Jorge Silva - SP</b></p>
        </div>
      </div>
      <div class="row centraliza" style="margin-top:15px; margin-bottom:30px;">
        <button type="button" class="btn btn-amarelo">Veja mais</button>
      </div>

      
      <div style="heigth:30px;"></div>

      <div id="panel1" class="panel hidden1 content1">
        <div id="toggle1" class="toggle">
          <div class="row">
            <div class="col-xs-12">
              <table>
                <tr>
                  <td width="54px" valign="top"><span id="ico24"></span></td>
                  <td>
                    <p>Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi adipiscing elit. Donec sed gravida dolor. Fusce aliquam, urna sit amet luctus adipiscing, massa sem venenatis dui, quis accumsan mi orci eu orci. Mauris nec massa non mi iaculis tincidunt 
                    eget a lectus. Curabitur suscipit, magna vel laoreet volutpat, sem mauris placerat risus, nec pretium mauris orci non dui.</p>

                    <p>Cras in massa dapibus leo tincidunt molestie nec ut sem. Aenean sit amet ipsum risus. Class aptent taciti sociosqu 
                    ad litora torquent per conubia nostra, per inceptos himenaeos. Cras vitae erat at magna volutpat consequat ut a justo. 
                    Mauris dapibus dolor at orci placerat congue. Praesent facilisis sodales molestie. Quisque eget lacus eget justo aliquet
                    sagittis. Duis sed elit id dui semper feugiat. Vivamus risus magna, facilisis at hendrerit sit amet, accumsan nec felis.</p>

                    <p>Nunc massa tellus, fringilla ut tincidunt consequat, ultricies eget nunc. </p>
                  </td>
                </tr>
              </table>
            </div>
          </div>         
        </div><!-- /content -->
      </div><!-- /panel -->

      <div id="panel2" class="panel hidden1 content1">
        <div id="toggle2" class="toggle">
          <div class="row">
            <div class="col-xs-12">
              <table>
                <tr>
                  <td width="54px" valign="top"><span id="ico24"></span></td>
                  <td>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed gravida dolor. Fusce aliquam, urna sit amet 
                    luctus adipiscing, massa sem venenatis dui, quis accumsan mi orci eu orci. Mauris nec massa non mi iaculis tincidunt 
                    eget a lectus. Curabitur suscipit, magna vel laoreet volutpat, sem mauris placerat risus, nec pretium mauris orci non dui.</p>

                    <p>Cras in massa dapibus leo tincidunt molestie nec ut sem. Aenean sit amet ipsum risus. Class aptent taciti sociosqu 
                    ad litora torquent per conubia nostra, per inceptos himenaeos. Cras vitae erat at magna volutpat consequat ut a justo. 
                    Mauris dapibus dolor at orci placerat congue. Praesent facilisis sodales molestie. Quisque eget lacus eget justo aliquet
                    sagittis. Duis sed elit id dui semper feugiat. Vivamus risus magna, facilisis at hendrerit sit amet, accumsan nec felis.</p>

                    <p>Nunc massa tellus, fringilla ut tincidunt consequat, ultricies eget nunc. </p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed gravida dolor. Fusce aliquam, urna sit amet 
                    luctus adipiscing, massa sem venenatis dui, quis accumsan mi orci eu orci. Mauris nec massa non mi iaculis tincidunt 
                    eget a lectus. Curabitur suscipit, magna vel laoreet volutpat, sem mauris placerat risus, nec pretium mauris orci non dui.</p>

                    <p>Cras in massa dapibus leo tincidunt molestie nec ut sem. Aenean sit amet ipsum risus. Class aptent taciti sociosqu 
                    ad litora torquent per conubia nostra, per inceptos himenaeos. Cras vitae erat at magna volutpat consequat ut a justo. 
                    Mauris dapibus dolor at orci placerat congue. Praesent facilisis sodales molestie. Quisque eget lacus eget justo aliquet
                    sagittis. Duis sed elit id dui semper feugiat. Vivamus risus magna, facilisis at hendrerit sit amet, accumsan nec felis.</p>

                    <p>Nunc massa tellus, fringilla ut tincidunt consequat, ultricies eget nunc. </p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed gravida dolor. Fusce aliquam, urna sit amet 
                    luctus adipiscing, massa sem venenatis dui, quis accumsan mi orci eu orci. Mauris nec massa non mi iaculis tincidunt 
                    eget a lectus. Curabitur suscipit, magna vel laoreet volutpat, sem mauris placerat risus, nec pretium mauris orci non dui.</p>

                    <p>Cras in massa dapibus leo tincidunt molestie nec ut sem. Aenean sit amet ipsum risus. Class aptent taciti sociosqu 
                    ad litora torquent per conubia nostra, per inceptos himenaeos. Cras vitae erat at magna volutpat consequat ut a justo. 
                    Mauris dapibus dolor at orci placerat congue. Praesent facilisis sodales molestie. Quisque eget lacus eget justo aliquet
                    sagittis. Duis sed elit id dui semper feugiat. Vivamus risus magna, facilisis at hendrerit sit amet, accumsan nec felis.</p>

                    <p>Nunc massa tellus, fringilla ut tincidunt consequat, ultricies eget nunc. </p>
                  </td>
                </tr>
              </table>
            </div>
          </div>         
        </div><!-- /content -->
      </div><!-- /panel -->

      <div id="panel3" class="panel hidden1 content1">
        <div id="toggle3" class="toggle">
          <div class="row">
            <div class="col-xs-12">
              <table>
                <tr>
                  <td width="54px" valign="top"><span id="ico24"></span></td>
                  <td>
                    <p>Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi adipiscing elit. Donec sed gravida dolor. Fusce aliquam, urna sit amet luctus adipiscing, massa sem venenatis dui, quis accumsan mi orci eu orci. Mauris nec massa non mi iaculis tincidunt 
                    eget a lectus. Curabitur suscipit, magna vel laoreet volutpat, sem mauris placerat risus, nec pretium mauris orci non dui.</p>

                    <p>Cras in massa dapibus leo tincidunt molestie nec ut sem. Aenean sit amet ipsum risus. Class aptent taciti sociosqu 
                    ad litora torquent per conubia nostra, per inceptos himenaeos. Cras vitae erat at magna volutpat consequat ut a justo. 
                    Mauris dapibus dolor at orci placerat congue. Praesent facilisis sodales molestie. Quisque eget lacus eget justo aliquet
                    sagittis. Duis sed elit id dui semper feugiat. Vivamus risus magna, facilisis at hendrerit sit amet, accumsan nec felis.</p>

                    <p>Nunc massa tellus, fringilla ut tincidunt consequat, ultricies eget nunc. </p>
                  </td>
                </tr>
              </table>
            </div>
          </div>         
        </div><!-- /content -->
      </div><!-- /panel -->

    </div>
  </section> <!-- depoimentos /-->

  <div class="clearfix"></div>
  <div style="height:60px;"></div>
 	
 	
 	<!--#include file="_includes/_rodape.asp" --> 

<!-- Modal /-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Aline Mello- DF</h4>
      </div>
      <div class="modal-body">
          <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3"><img src="images/foto_dep_1.png" alt=""></div>
            <div class="col-xs-12 col-sm-9 col-md-9">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><b>Aline Mello- DF</b></p>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-amarelo" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>    

<!-- início do javascript /-->

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>




<script type="text/javascript"> 

jQuery(document).ready(function(){
  jQuery('#toggle1').click(function(){
    jQuery('#panel1').toggleClass( "hidden1", 300, "easeOutSine" );
  });
  jQuery('#toggle2').click(function(){
    jQuery('#panel2').toggleClass( "hidden1", 300, "easeOutSine" );
  });
  jQuery('#toggle3').click(function(){
    jQuery('#panel3').toggleClass( "hidden1", 300, "easeOutSine" );
  });
});


  $('#myModal').on('hidden.bs.modal', function (e) {
      // do something...
  })


</script>



</body>
</html>