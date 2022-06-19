accessing
dateText

	self date 
		ifNil: [^ ''] 
		ifNotNil: [^ (self date dayOfMonth) asString]