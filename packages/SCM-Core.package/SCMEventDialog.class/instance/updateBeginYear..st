updating
updateBeginYear: aText
	
	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginYear put: '']
		ifFalse: [
			(self isValidYear: aText)
				ifTrue: [self beginYear: aText]].
	self updateBegin