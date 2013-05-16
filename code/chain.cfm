<cfscript>
	chainer = new cfcs.ChainDemo();
	dump(var=chainer,label="Empty CFC with generated getters and setters");
	
	chainer.setFirstName("Mark").setLastName("Drew");

	dump(var=chainer, label="CFC populated with generated setters");

</cfscript>