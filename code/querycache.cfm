<cfquery name="getCountries" result="queryCacheInfo" cachedwithin="#CreateTimeSpan(0,0,0,10)#">
	SELECT FirstName, Surname FROM Customers
</cfquery>

<cfdump eval=queryCacheInfo>