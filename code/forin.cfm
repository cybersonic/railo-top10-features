<cfscript>	

	myStruct = {one: "The One" ,two: "The Two",three: "The Three",four:"The Four",five: "The Five"};
	myArray = ListToArray("one,two,three,four,five");
	myQuery = QueryNew("id,value", "string,string");
	
	for(i=0; i < 5; i++){
		QueryAddRow(myQuery);
		QuerySetCell(myQuery, "id", i);
		QuerySetCell(myQuery, "value", "The Value #i#");
	}
	
	echo("<h2>Show the Struct!</h2>");
	for(key in myStruct){
		dump(key);
	}
	
	echo("<h2>Show the Array</h2>");
	for(item in myArray){
		dump(item);
	}
	echo("<h2>Also do a CFLoop in script</h2>");
	loop array="#myArray#" index="x" item="a"{
		dump(x);
		dump(a);
	}

	echo("<h2>Show the Query</h2>");
	for(row in myQuery){
		dump(row);
	}

</cfscript>

