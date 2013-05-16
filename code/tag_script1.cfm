<cfscript>
//Send an email 
	mail from="Mark@getrailo.com" to="gert@getrailo.com" subject="Awesome! Tags in Script!"{
		WriteOutput("Hey Gert! 
		Check out the code samples here! You can write tags in CFScript
		Mark
		");
	}

//Query a database
	query name="getUsers"{
		echo("SELECT * FROM Customers WHERE ID =");
		queryparam cfsqltype="varchar" value="#RandRange(1,70000)#";
	}


	dump(getUsers);
</cfscript>