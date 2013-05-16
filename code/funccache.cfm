<cfset comp = new cfcs.CacheDemo()>

<cfdump var="#comp.getTime()#" label="Inital call">
<cfset sleep(1500)>
<cfdump var="#comp.getTime()#" label="Cached call">

<!--- now with attributes --->
<cfdump var="#comp.getTime("Elvis", "29")#" label="Inital call">
<cfdump var="#comp.getTime("Sean", "42")#" label="Inital call">
<cfset sleep(1500)>
<cfdump var="#comp.getTime("Elvis", "29")#" label="Cached call">
<cfdump var="#comp.getTime("Sean", "42")#" label="Cached call">

