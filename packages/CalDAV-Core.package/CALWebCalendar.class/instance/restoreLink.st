accessing
restoreLink

	| file |
	
	(self calendarDirectory fileExists: self name) ifFalse: [^false].
	file := FileStream readOnlyFileNamed: (self class calendarDirectory fullNameFor: self name).
	self caldavLink: (file contents).
	file close.