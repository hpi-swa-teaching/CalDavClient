accessing
updateBeginMinute: aText
	
	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginMinute put: '']
		ifFalse: [
			(self isValidMinute: aText)
				ifTrue: [self eventData at: #beginMinute put: aText asString]].
	self updateEnd