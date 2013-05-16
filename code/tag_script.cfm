<!---
instead of 
<cfparam name="url.age" type="numeric" default="10" max="100" min="18">
You can do
--->

<cfscript>
	
	
	param name="url.age" type="numeric" default="10" max="100" min="18";
	dump(url.age)
	//How about cfhttp ?
	http method="GET" url="http://www.google.com" result="webPage";
	dump(webPage.statuscode)

	timer  label="mylabel"{
		sleep(10);
	}


</cfscript>
<!--- 
Bonus! Did you see what I missed?
--->