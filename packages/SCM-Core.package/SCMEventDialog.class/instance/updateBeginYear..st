accessing
updateBeginYear: aText
	
	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginYear put: '']
		ifFalse: [
			(self isValidYear: aText)
				ifTrue: [self eventData at: #beginYear put: aText asString]].
	self updateBegin 