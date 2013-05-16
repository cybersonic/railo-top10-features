<cfsavecontent variable="title">
	<i class='icon-heart'></i>
</cfsavecontent>
<cf_layout title="CFSCRIPT Love <3">
	
	
	<cf_tabs>

		<cf_tab label="Brief">
			<cfshow template="/code/09_code.cfm" run="true">

		</cf_tab>
		<cf_tab label="Retry">
			<cfshow template="/code/09_retry.cfm" run="true">
		</cf_tab>
		
		<cf_tab label="Labels">
			<cfshow template="/code/breakcontinue_script.cfm" run="true">
		</cf_tab>

		<cf_tab label="Elvis">
			<cfshow template="/code/elvis.cfm" run="true">
		</cf_tab>

		<cf_tab label="foreach" title="For/Each">
			<cfshow template="/code/forin.cfm" run="true">
		</cf_tab>

		<cf_tab label="Tags">
			<cfshow template="/code/tag_script.cfm" run="true">
			<cfshow template="/code/tag_script1.cfm" run="true">
		</cf_tab>
		<cf_tab label="MemberFunctions" title="Member Functions">

			<cfshow template="/code/member_functions.cfm" run="true"/>
			
		</cf_tab>
	</cf_tabs>
	
	
</cf_layout>

