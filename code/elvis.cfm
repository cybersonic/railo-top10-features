<cfscript>
	peter = elvis ?: "Elvis in disguise";
	dump(peter);
	People = {

	};

	elvis = People.elvis ?: {name="elvis"};
	dump(elvis);
	

	People.elvis = "Hey, I spotted Elvis!";



	peter = People.elvis  ?: "Elvis in disguise";
	dump(peter);
</cfscript>
