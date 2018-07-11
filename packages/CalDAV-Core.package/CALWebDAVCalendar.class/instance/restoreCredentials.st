accessing
restoreCredentials 

	| credentialsCollection file |
	
	(self class calendarDirectory fileExists: self name) ifFalse: [^false].
	file := FileStream readOnlyFileNamed: (self class calendarDirectory fullNameFor: self name).
	credentialsCollection := STON fromString: file contents.
	file close.
	self caldavLink: (credentialsCollection at: 1).
	self username: (credentialsCollection at: 2).
	self password: (credentialsCollection at: 3).
	