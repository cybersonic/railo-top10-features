<cfscript>
	baseURL="http://#cgi.HTTP_HOST#";
	if(cgi.server_port != "80"){
		baseURL & ":" & cgi.server_port;
	}

	baseURL = baseURL & CGI.context_path;

	dump(baseURL);


	http url="#baseURL#/rest/demo/hello" method="GET";
	dump(cfhttp);

	http url="#baseURL#/rest/demo/hello/railo-url" method="GET";
	dump(cfhttp);

	http url="#baseURL#/rest/demo/hello" method="POST" {
		httpparam name="a" value="railo-form" type="formField";
	}
	dump(cfhttp);
</cfscript>