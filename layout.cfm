<cfparam name="attributes.title" default="">
<cfif ThisTag.executionMode IS "start">
	<!DOCTYPE html>
	<html>
		<head>
			<meta http-equiv="Content-type" content="text/html; charset=utf-8">
			<title>Railo Top 10 Features</title>
			<!-- Le styles -->
			    <link href="/css/bootstrap.css" rel="stylesheet">
			    <link href="/css/bootstrap-responsive.css" rel="stylesheet">
			  
			<!-- Le scripts -->	
				<script src="/js/jquery.js"></script>
				<script src="/js/bootstrap.js"></script>
				
		</head>
		<body id="index">

			<div class="navbar">
			  <div class="navbar-inner">
			    <a class="brand" href="index.cfm">Railo Top 10 Features</a>
			    <ul class="nav">
					<!---
			      <li class="active"><a href="#">Home</a></li>
			      <li><a href="#">Link</a></li>
			      <li><a href="#">Link</a></li>
					--->
			    </ul>
			  </div>
			</div>
			
		<div class="container">
			<h1><cfoutput>#attributes.title#</cfoutput></h1>
</cfif>
	
	
<cfif ThisTag.executionMode IS "end">


	
			
		
			
		
			</div>
			
		</body>
	</html>	


</cfif>
