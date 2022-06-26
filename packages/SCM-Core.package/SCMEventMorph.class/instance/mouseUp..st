initialization
mouseUp: anEvent

	(self containsPoint: anEvent cursorPoint)
		ifTrue: [
		self event isInReadOnlyCalendar
			ifTrue: [self openShowEventDialogFor: self event]
			ifFalse: [self openEditEventDialogFor: self event]]
		