accessing
updateBeginHour: aText

	(self isEmptyText: aText)
		ifTrue: [self eventData at: #beginHour put: '']
		ifFalse: [
			(self isValidHour: aText)
				ifTrue: [self beginHour: aText]].
	self updateBegin