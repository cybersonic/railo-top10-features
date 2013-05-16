<cfscript>
	myArray = ListToArray("one,two,three,four,five");
</cfscript>

<cfloop array="#myArray#" index="i">
	<cfdump var="#i#">
</cfloop>