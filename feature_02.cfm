<!---
<cf_layout title="Break Labels">
	
		<cfshow template="/code/breakcontinuelables.cfm" run="true">

		
</cf_layout>
--->
<cf_layout title="Extendability!">

	<cf_tabs>
		<cf_tab label="intro">
			<div class="lead">
			<ul>
				<li>Tags
					<ul>
						<li>like cftab! or cfshow!</li>
					</ul>
				</li>
				<li>Functions
				</li>
				<li>Admin Plugins</li>
				<li>Caches
					<ul>
						<li>Like Mongo DB</li>

					</ul>
				</li>
				<li>Like MongoDB native funcs!
					<ul><li>Want to see it? (no safety-net demo!)</li></ul>
				</li>
				<li>Event Gateways in CFML 
				</li>
				<li><a target="_new" href="http://www.getrailo.org/index.cfm/extensions/">Extension Store</a></li>
				<li><a target="_new" href="/railo-context/admin/web.cfm?action=extension.applications">Web Admin Store</a></li>
				<li><a target="_new" href="/railo-context/admin/server.cfm?action=extension.applications">Server Admin Store</a></li>
				<li>Extension Builder
				</li>
			</ul>	
		</div>
		</cf_tab>
		<cf_tab label="mongo">
			<cfshow template="/code/mongo.cfm" run="true"/>		

		</cf_tab>
	</cf_tabs>

		
</cf_layout>
