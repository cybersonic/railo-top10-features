component displayname="Tab"{
		
		this.myStruct = {};
	function onStartTag(){
		param name="attributes.label" default="railotab_#CreateUUID()#";
		param name="attributes.title" default="#attributes.label#";
		this.myStruct.label = attributes.label;
		this.myStruct.title = attributes.title;
		request.thTabs.append(this.myStruct);
	
	}
	
	function onEndTag(){
		this.myStruct.content=arguments.GENERATEDCONTENT;
	}
}