<cfscript>
	myArray = ListToArray("one,two,three,four,five");
</cfscript>

<cfloop array="#myArray#" index="i" item="it">
	<cfdump var="#i#" label="The numerical index">
	<cfdump var="#it#" label="The item in the array">
</cfloop>