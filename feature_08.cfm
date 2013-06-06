<cf_layout title="Caches">
	

	<cf_tabs>
		<cf_tab label="Intro">
			<ul class="lead">
				<li>Different Types of Caches</li>
				<li>Extendable Cache Drivers</li>
				<li>Very useful in distributed applications</li>
			</ul>
		</cf_tab>

		<cf_tab label="Object">
			<h2>cacheGet,cachePut, cfcache action="get|put"</h2>
			<cfshow template="/code/cachegetandput.cfm" run="true" />
		</cf_tab>

		<cf_tab label="Template">
			<h2>cfcache action="content|cache|serverCache"</h2>
			<cfshow template="/code/templatecache.cfm" run="true" /> 

				<br>
				<p class="">Stored in: /Users/markdrew/Sites/railo10.local/WEB-INF/railo/cache/</p>
		</cf_tab>

		<cf_tab label="Query">
			<h2>cfquery</h2>
			<cfshow template="/code/querycache.cfm" run="true" /> 
		</cf_tab>

		<!--- <cf_tab label="Resources">
			<h2>ram:// resource</h2>
			<p>More on this in a minute</p>
		</cf_tab> --->

		<cf_tab label="Function">
			<h2>cffunction/function</h2>
			<cfshow template="/code/funccachepage.cfm" run="true" /> 
		</cf_tab>
	</cf_tabs>
	
	<hr>
	
	<a href="/railo-context/admin/web.cfm?action=services.cache" target="_new">Caches in the Web Administrator</a>
	<hr>
	
</cf_layout>

