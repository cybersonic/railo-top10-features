<cfscript>
	SomeContent = {name:"Mark",age:"42-4"};

	cachePut("Mark", SomeContent);

	dump(cacheGet("Mark"));
</cfscript>

	