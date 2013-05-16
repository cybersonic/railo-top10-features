<cfoutput>
<ul>
		<cfset counter = 1>
		<cfloop from="1" to="10" index="x" label="outer_loop">
			<li>#x# (count: #counter#)<ul>		
			<cfloop from="1" to="10" index="y" label="inner_loop">
				<cfset counter++>
				<cfif counter EQ 22>
					<cfcontinue "outer_loop">
				</cfif>		
				<cfif counter EQ 45>
					<cfbreak "outer_loop">
				</cfif>	

				<li>#y# (count: #counter#)</li>
				
			</cfloop>
			</ul>
			
		</cfloop>

</ul>
</cfoutput>
