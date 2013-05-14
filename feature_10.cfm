<cf_layout title="##10 Datasources in Application.cfc">

	

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
		
	
	
</cf_layout>