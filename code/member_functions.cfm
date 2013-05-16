<cfscript>
	myItems = ListToArray("one,two,three,four,house,dog,ball");
	myStr = {
		one: "Onsey",
		two: "Twosey",
		three:  "Thressey"
	};
	dump(var=myItems.len(), label="Shortcut for ArrayLen(myItems)");
	
	//Shortcut for ArrayAppend(myItems, "elvis")
	myItems.append("elvis");
	dump(var=myItems, label="Shortcut for ArrayAppend(myItems, 'elvis')");

	dump(myStr.keyExists("one"));

	//Loop through each item in a struct with a closure:
	var filter = function(arg1){
		dump(var=arg1, label="key of the struct from a closure");
		dump(var=myStr[arg1], label="value of the struct");
	};
	myStr.each(filter);
	
	//Other functions on Structures:
	dump(var=myStr.keyList(), label="List Keys");
	dump(var=myStr.keyExists("one"), label="Key Exists");
</cfscript>