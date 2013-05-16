<cfparam name="attributes.title" default="">
<cfparam name="attributes.debugging" default="false">
<cfset PageThatMyFaterBuilt = Replace(ListLast(CGI.SCRIPT_NAME, "_"), ".cfm", "")>
<cfif ThisTag.executionMode IS "start">
	<!DOCTYPE html>
		
	<cfsetting showdebugoutput="#attributes.debugging#">
		
	<html>
		<head>
			<meta http-equiv="Content-type" content="text/html; charset=utf-8">
			<title>Railo Top 10 Features</title>

			 <!-- Le styles -->
			    <link href="/css/bootstrap.css" rel="stylesheet">
			    <link href="/css/bootstrap-responsive.css" rel="stylesheet">
			    <link href="/js/google-code-prettify/prettify.css" rel="stylesheet">
			    <link href="/css/preso.css" rel="stylesheet">
				
		</head>
		<body id="index">

			<div class="navbar">
			  <div class="navbar-inner">
			    <a class="brand" href="index.cfm">Railo Top 10 Features</a>
			    <ul class="nav">
				
			      <li class="active"><a href="http://www.twitter.com/markdrew">@markdrew</a></li>
			      <li><a href="http://www.twitter.com/railo">@railo</a></li>
			      <li><a href="http://www.getrailo.org">http://www.getrailo.org</a></li>
			      <li><a href="/railo-context/admin.cfm" target="_new">Railo Admin</a></li>
				
			    </ul>
			  </div>
			</div>
			

			<!---
#template# (<a href="txmt://open/?url=file://#getbasetemplatepath()#" title="Open this in TextMate">#line#</a>)
subl://open/?url=file:///etc/hosts
			--->
		<div class="container">
		<cfoutput>
			<cfif Len(attributes.title)>
			<h1><cfif isNumeric(PageThatMyFaterBuilt)>###PageThatMyFaterBuilt# </cfif>#attributes.title#


			<a href="subl://open/?url=file://#getbasetemplatepath()#"><i class="icon-pencil"></i></a>
			</h1>	
			</cfif>
		</cfoutput>
		
		
		
</cfif>
	
	
<cfif ThisTag.executionMode IS "end">


	
			
		
			
		
			</div>
			<footer>

				<cfset currPage = 0>
				<cfset prevPage = "index.cfm">

				<cfset nextPage = "feature_10.cfm">
				<cfset PageThatMyFaterBuilt = Replace(ListLast(CGI.SCRIPT_NAME, "_"), ".cfm", "")>
				<cfset  currPage = isNumeric(PageThatMyFaterBuilt) ? PageThatMyFaterBuilt : 0>

				

				<cfif currPage LT 10>
					<cfset prevPage = "feature_#NumberFormat(currPage+1, "00")#.cfm">
				</cfif>

				<cfif currPage GT 0>
						<cfset nextPage = "feature_#NumberFormat(currPage-1, "00")#.cfm">	
				</cfif>

				<cfif currPage EQ 0>
					<cfset prevPage = "index.cfm">
					<cfset nextPage = "feature_10.cfm">
				</cfif>

				<cfif currPage EQ 1>
					<cfset nextPage = "end.cfm">
				</cfif>

				<cfif CGI.SCRIPT_NAME NEQ "/end.cfm">
					<cfset currPage = 100>
				</cfif>

				<cfoutput>
				<div class="pagination text-center">
				  <ul>
				    <li class="#currPage EQ 0 ? "active" : ""#"><a href="#prevPage#">Prev</a></li>
				    	
				    <cfloop from="10" to="1" index="i" step="-1">
				    	<cfset class = currPage EQ i ? "active" : "">
						<li class="#class#"><a href="feature_#NumberFormat(i, "00")#.cfm">#i#</a></li>
				    </cfloop>

				    <cfif CGI.SCRIPT_NAME NEQ "/end.cfm">
				    	<li><a href="#nextPage#">Next</a></li>	
				    </cfif>
				    
				  </ul>
				</div>
				



				<!-- Footer
    ================================================== -->
    <footer class="footer">
      
    </footer>



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap-transition.js"></script>
    <script src="/js/bootstrap-alert.js"></script>
    <script src="/js/bootstrap-modal.js"></script>
    <script src="/js/bootstrap-dropdown.js"></script>
    <script src="/js/bootstrap-scrollspy.js"></script>
    <script src="/js/bootstrap-tab.js"></script>
    <script src="/js/bootstrap-tooltip.js"></script>
    <script src="/js/bootstrap-popover.js"></script>
    <script src="/js/bootstrap-button.js"></script>
    <script src="/js/bootstrap-collapse.js"></script>
    <script src="/js/bootstrap-carousel.js"></script>
    <script src="/js/bootstrap-typeahead.js"></script>
    <script src="/js/bootstrap-affix.js"></script>

    <script src="/js/holder/holder.js"></script>
    <script src="/js/google-code-prettify/prettify.js"></script>
	<script src="/js/application.js"></script>


				</cfoutput>

			</footer>


		</body>
	</html>	


</cfif>
