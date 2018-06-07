accessing
dateText

	self date 
		ifNil: [^''] 
		ifNotNil: [^(date dayOfMonth) asString]