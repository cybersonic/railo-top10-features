<cfcomponent>
	<cfscript>
		function onStartTag(){
			request.thTabs = [];

		}
	</cfscript>

	<cffunction name="onEndTag">
		
		
		<cfsavecontent variable="myret">	
		<cfoutput>
		<ul id="myTab" class="nav nav-tabs">
		<!--- do the headers --->
		<cfset started = false>
		<cfloop array="#request.thtabs#" item="a">
			<cfset class = !started ? "active" : "">
			<li class="#class#"><a href="###a.label#" data-toggle="tab">#a.title#</a></li>
			<cfset started = true>
		</cfloop>
		</ul>
		
		<!--- do the main body items --->
		<cfset started = false>
		<div id="myTabContent" class="tab-content">
		<cfloop array="#request.thtabs#" item="a">
			<cfset class = !started ? "active" : "">
			<div class="tab-pane fade in #class#" id="#a.label#">
				#a.content#
			</div>
			<cfset started  = true>
		</cfloop>
		</div>
		
		</cfoutput>		
		</cfsavecontent>
		<cfoutput>#myret#</cfoutput>
		<!---
		
	 <ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#Applicationcfc" data-toggle="tab">Application.cfc</a></li>
			<li><a href="#Datasource" data-toggle="tab">Datasource</a></li>
			<li><a href="#Datasource2" data-toggle="tab">Datasource Password</a></li>
			<li><a href="#Query" data-toggle="tab">Query</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
				 <div class="tab-pane fade in active" id="Datasource">
						<cfshow template="/code/10_outline.txt" tab="true"> <!--- ADD TAB=true to this --->
				</div>
				<div class="tab-pane fade in" id="Datasource2">
							<cfshow template="/code/10_outline2.txt">
				</div>
				<div class="tab-pane fade in" id="Query">
					<cfshow template="/code/10_query.cfm" run="true" label="true">
				</div>
				<div class="tab-pane fade in" id="Applicationcfc">
					<cfshow template="/Application.cfc" run="false" label="true">
				</div>	
		</div>
		
		--->
	</cffunction>
	
</cfcomponent>	

	
	

	

	

