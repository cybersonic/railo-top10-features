
<cfscript>
// test dot notation setting
isUpper=getPageContext().getConfig().getDotNotationUpperCase();
if(isUpper) {
	echo('<h2 style="color:red">');
	echo('MongoDB is case-senstive, if you use dot notation (eg: db.myCollection.find()), 
you have to change the following setting in your Railo Administrator:
"Setting/Language/Compiler/Dot Notation" to "keep original case"
if you can''t only use bracket notation to interact with MongoDB (Example: db["myCollection"].find()))');

	echo('</h2>');
}

	
//Is there a connection in the application?

if(!structKeyExists(application, "mongo")){
	application.mongo = MongoDBConnect("test","localhost", 27017);	
}
// your connection settings for MongoDB
db=application.mongo;	


dump("------ DB -------");
	dump(var:db, expand:false);
	dump(db.getCollectionNames());
	dump(db.getName());
	
	dump(structCount(db));
	loop collection="#db#" index="n" item="v" {
		dump(var:v,label:n, expand:false);
	}

dump("------ Collection ""test2"" -------");	
	if(structkeyExists(db,isUpper?'MYCOLL':'myColl')) db.myColl.drop();

	db.myColl={};
	db.myColl.insert({susi:"Sorglos"});
	dump(db.myColl);
	dump(db.myColl.findOne().susi);
	id=db.myColl.findOne()._id;

dump("------ Collection ""test2._id"" -------");
	dump(id);
	dump(id&"");
	dump(id.inc);
	dump(id.time);
	dump(id.machine);
	dump(id.getMachine());
	// id.susi=1;
	// x=id.susi;
</cfscript>

