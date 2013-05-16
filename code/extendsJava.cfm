<cfset rFile = new cfc.FileExtends("/Users/markdrew/")>
<cfdump var="#rFile.isFile()#">

<Cfset myItem = CreateObject("java", "java.io.File")>
<cfdump var="#myItem#">