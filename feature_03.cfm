<cf_layout title="Portability of Applications">
	
	<cfdirectory action="list" directory="#expandPath("{railo-web}")#" name="webinf">
			
	<cf_tabs>
		<cf_tab title="Intro">
			<p class="lead">The Magic of the WEB-INF</p>
			<ul>
				<li>Makes your application Portable</li>
				<li>Settings are all in there</li>
			</ul>

		<h3>/WEB-INF/railo/</h3>
			<ul>
				<cfoutput>
					<cfloop query="#webinf#">
									<cfif attributes EQ "H">
										<cfcontinue>
									</cfif>
									<cfset class ="">
				
									<cfset class= Name EQ "railo-web.xml.cfm"? "text-info" :"">
									<li class="#class#">#Name#</li>
					</cfloop>
				</cfoutput>
			</ul>
		</cf_tab>
		
	</cf_tabs>
	
			
</cf_layout>
