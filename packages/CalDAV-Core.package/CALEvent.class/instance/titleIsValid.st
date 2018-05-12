accessing
titleIsValid 

	self title = '' 
		ifTrue: [^CALEvent noTitleError]
		ifFalse:[^'']