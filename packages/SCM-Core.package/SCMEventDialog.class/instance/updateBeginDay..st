accessing
updateBeginDay: aText 

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginDay put: '']
		ifFalse: [
			(self isValidDay: aText)
				ifTrue: [self eventData at: #beginDay put: aText asString]].
	self updateBegin