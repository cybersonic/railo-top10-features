


<cfscript>
	try {
		dump("Trying to write a file in a non-existent directory");
		FileWrite("demo/testfile.cfm", "");
		dump("Actually wrote the file!");
	}
	catch(any e){
		dump("Dammit! Folder Didn't exist! Message: " & e.message);
		DirectoryCreate("demo/");
		dump("Created the directory!");
		dump("Let's retry that again");
		retry;
	}

	DirectoryDelete("demo/", true); //Ignore this line, it's here to make sure the try works!
</cfscript>


