<cfquery name="getCountries" result="countryMeta">
	SELECT Distinct(Country) FROM Customers ORDER by Country ASC
</cfquery>

<cfdump eval=countryMeta>