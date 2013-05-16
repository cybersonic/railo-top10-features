
<cfset lazyStart = getTickCount()>

<cfquery name="getPeople" lazy="true">
	SELECT FirstName, Surname FROM Customers ORDER by Country ASC
</cfquery>

<Cfoutput>
	<h3>Recordcount: #getPeople.recordcount#</h3>
</Cfoutput>
<cfloop query="getPeople" endrow="10">
		<cfset Elvis = FirstName>
</cfloop>
<cfdump var="#getTickCount()-lazyStart#" label="Lazy Query">


<cfset nonlazyStart = getTickCount()>

<cfquery name="getPeople">
	SELECT FirstName, Surname FROM Customers ORDER by Country ASC
</cfquery>

<cfloop query="getPeople" endrow="10">
		<cfset Elvis = FirstName>
</cfloop>
<cfdump var="#getTickCount()-nonlazyStart#" label="Normal Query">