<cf_layout>

<form method="post">
  <cfloop index="x" from="1" to="101">
		<cfoutput>
		<input type="text" name="field.#x#"><br/>
		</cfoutput>
	</cfloop>
	<input type="submit" value="Post this baby!">
</form>

<cfdump var="#FORM#">
</cf_layout>