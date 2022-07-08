accessing
updateBeginMonth: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginMonth put: '']
		ifFalse: [
			(self isValidMonth: aText)
				ifTrue: [self beginMonth: aText]].
	self updateBegin