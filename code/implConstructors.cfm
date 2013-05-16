<cfscript>

	cfc = new cfcs.Constr_1();
	dump(var=cfc, label="Normal Instantiation of a CFC");
	
	cfc = new cfcs.Constr_1(firstname:"Susi",lastName:"Sorglos");
	dump(var=cfc, label="setting properties via the constructor");
	
	cfc = new cfcs.Constr_1({firstname:"Susi",lastName:"Sorglos"});
	dump(var=cfc, label="Properties set via implicit argumentCollection");	

	cfc = new cfcs.Constr_1(argumentCollection:{firstname:"Susi",lastName:"Sorglos"});
	dump(var=cfc, label="Properties set via explicit argumentCollection");	
	
</cfscript>