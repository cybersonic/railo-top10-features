<cfscript>
	variables.name = "Elvis";
	
	comp = new Test();
	
	
	myClosure = function(){
		writeDump(variables.name);
	}; 
	
	function myClosure2(){
		writeDump(variables.name);
	}
	WriteOutput("From The outside");
	myClosure();
	myClosure2();
	

	
	WriteOutput("From the inside");
	comp.runIt(myClosure);
	comp.runIt(myClosure2);

	WriteOutput("From the inside -  Variables Updated");
	variables.name = "Elvis Updated";
	
	comp.runIt(myClosure);
	comp.runIt(myClosure2);
	
</cfscript>