<cf_layout title="Datasources in Application.cfc">

		<cf_tabs>
			
			<cf_tab label="Intro">
				<h2>Old way to build an application</h2>
				<ol class="lead">
					<li >Create Database</li>
					<li >Create Datasource</li>
					<li>Litter code with references to Datasource
						<cfshow template="/code/10_badquery.cfm" run="true">
					</li>
					<li>Could there be another way? <a href="/railo-context/admin/web.cfm?action=services.datasource" target="_new" class="btn btn-primary">Open the Admin</a>
					</li>
				</ol>
				
				
			</cf_tab>
			
			<cf_tab label="Datasource">
				<cfshow template="/code/10_outline.txt" tab="true">
					
			</cf_tab>
			<cf_tab label="Datasource2">
						<cfshow template="/code/10_outline2.txt">
			</cf_tab>
			<cf_tab label="Applicationcfc" title="Application.cfc">
				<cfshow template="/Application.cfc" run="false" label="true">
			</cf_tab>
			<cf_tab label="Query">
				<cfshow template="/code/10_query.cfm" run="true" label="true">
			</cf_tab>
			
		</cf_tabs>
		
	
</cf_layout>