accessing
updateBeginMonth: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginMonth put: '']
		ifFalse: [
			(self isValidMonth: aText)
				ifTrue: [self eventData at: #beginMonth put: aText asString]].
	self updateBegin