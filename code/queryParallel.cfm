<cfscript>
	//Make a massive array!
	myArray = [];
	loop from="1" to="100" index="i"{
		myArray.append(i);
	}

	start = getTickCount();
	myArray.each(function(in){
		sleep(10);
	});

	echo("<h3>Normal: #getTickCount()-start# ms</h3>");
	
	maxthreads =10;
	start = getTickCount();
	myArray.each(function(in){
		sleep(10);
	}, true,maxthreads);


	echo("<h3>In Parallel: #getTickCount()-start# ms</h3>");
	

</cfscript>