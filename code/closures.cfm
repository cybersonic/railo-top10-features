<cfscript>
	
	myArray = ListToArray("1,2,4,5,6");
	
	dump(myArray);

	myclosure = function(arg1){
		dump(arg1);
	};




</cfscript>