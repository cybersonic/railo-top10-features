<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>Railo Top 10 Features</title>
		<!-- Le styles -->
		    <link href="/css/bootstrap.css" rel="stylesheet">
		    <link href="/css/bootstrap-responsive.css" rel="stylesheet">

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
		<cfset files=DirectoryList(".", false, "query", "feature_*.cfm","name desc")>			
			<ul>
				<cfoutput query="files">
					
					<li><a href="#name#">#Replace(name, ".cfm", "")#</a></li>
				</cfoutput>
				
			</ul>
		</div>
	
	</body>
</html>	



	