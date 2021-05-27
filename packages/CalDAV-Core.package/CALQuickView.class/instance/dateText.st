as yet unclassified
dateText

	self date 
		ifNil: [^''] 
		ifNotNil: [^(date dayOfMonth) asString]