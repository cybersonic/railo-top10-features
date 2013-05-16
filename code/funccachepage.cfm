<cffunction name="cacheTest" cachedwithin="#CreateTimeSpan(0,0,1,0)#">
	<cfargument name="Person">
	<cfreturn arguments.Person & " : " & Now()>
</cffunction>

<cfdump var="#cacheTest("Mark")#" label="Initial Call">
<cfset sleep(1500)>
<cfdump var="#cacheTest("Mark")#" label="Cached Call">


