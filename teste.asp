<html>
<head>
<style type="text/css">
* { margin: 0; padding: 0; }
p { margin-bottom: 10px; }

.hidden { height: 100px; overflow: hidden; }
.content { margin: 0 auto; width: 500px; }

#panel { position: relative; width: 500px; margin: 0 auto; }
#content { }

#toggle { width: 488px; padding: 5px;
	background: #fff; cursor: pointer;
	text-align: center;
}
</style>


<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>

<script type="text/javascript">
jQuery(document).ready(function(){
	jQuery('#toggle').click(function(){
		jQuery('#panel').toggleClass( "hidden", 300, "easeOutSine" );							  
	});	
});
</script>
</head>
<body>
	<div id="panel" class="hidden content">
		<div id="toggle">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed gravida dolor. Fusce aliquam, urna sit amet 
            luctus adipiscing, massa sem venenatis dui, quis accumsan mi orci eu orci. Mauris nec massa non mi iaculis tincidunt 
            eget a lectus. Curabitur suscipit, magna vel laoreet volutpat, sem mauris placerat risus, nec pretium mauris orci non dui.</p>
            
			<p>Cras in massa dapibus leo tincidunt molestie nec ut sem. Aenean sit amet ipsum risus. Class aptent taciti sociosqu 
            ad litora torquent per conubia nostra, per inceptos himenaeos. Cras vitae erat at magna volutpat consequat ut a justo. 
            Mauris dapibus dolor at orci placerat congue. Praesent facilisis sodales molestie. Quisque eget lacus eget justo aliquet
             sagittis. Duis sed elit id dui semper feugiat. Vivamus risus magna, facilisis at hendrerit sit amet, accumsan nec felis.</p>
             
			<p>Nunc massa tellus, fringilla ut tincidunt consequat, ultricies eget nunc. </p>
         </div><!-- /content -->
	</div><!-- /panel -->
	
</body>
</html>