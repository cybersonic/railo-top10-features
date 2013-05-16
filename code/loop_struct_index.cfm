<cfscript>
	myStruct = {one: "The One" ,two: "The Two",three: "The Three",four:"The Four",five: "The Five"};
</cfscript>

<cfloop collection="#myStruct#" index="i" item="it">
	<cfdump var="#i#" label="The numerical index">
	<cfdump var="#it#" label="The item in the array">
</cfloop>