component{
	

	
	function onStartTag(){

			param name="attributes.run" default="false";
			param name="attributes.include" default="#attributes.run#";
			param name="attributes.label" default="false";
			param name="attributes.edit" default="false";
			param name="attributes.size" default="20";

			param name="attributes.template";
			
			if(attributes.label){
				echo('<h3>#attributes.template#</h3>');
			}

			echo("<style> .prettyprint {font-size:#attributes.size#;} </style>");
			 
			
			echo('<pre class="prettyprint linenums">');
			echo(HTMLEditFormat(FileRead("#attributes.template#")));
			echo("</pre>");
			if(attributes.edit){
				echo('<a href="subl://open/?url=file://#expandPath(attributes.template)#"><i class="icon-pencil"></i></a>');	
			}
			if(attributes.include){
				include template="#attributes.template#";
			}
	}
	
	
	
}