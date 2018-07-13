accessing
restoreCredentials 

	| credentialsCollection file |
	
	(self class credentialsDirectory fileExists: self name) ifFalse: [^ self].
	file := FileStream readOnlyFileNamed: (self class credentialsDirectory fullNameFor: self name).
	credentialsCollection := STON fromString: file contents.
	file close.
	self caldavLink: (credentialsCollection at: 1).
	self username: (credentialsCollection at: 2).
	self password: (credentialsCollection at: 3).
	