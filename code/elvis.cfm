<cfscript>
	peter = elvis ?: "Elvis in disguise";
	dump(peter);
	People = {

	};

	elvis = People.elvis ?: {name="elvis"};
	dump(elvis);
	//or

	peter = elvis ?: "Elvis in disguise";
	dump(peter);
</cfscript>
