<cfscript>
	myUser = new cfcs.UserSimple();
	
	dump(var=myUser, label="Freshly initialised User");
	
	//call the magic functions
	myUser.firstName = "Elvis";
	myUser.lastName = "Prestley";
	dump(var=myUser, label="Freshly populated User");
	
	dump(var=myUser.getLastName(), label="Make sure we have set the surname in the above statement");
	
</cfscript>