accessing
titleIsValid 

	self title 
		ifNil:  [^CALEvent noTitleError]
		ifNotNil: [^'']