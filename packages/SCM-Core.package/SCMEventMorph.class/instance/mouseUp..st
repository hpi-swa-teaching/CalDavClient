event handling
mouseUp: anEvent

	(self containsPoint: anEvent cursorPoint)
		ifTrue: [self event isEditable
			ifFalse: [self openShowEventDialogFor: self event]
			ifTrue: [self openEditEventDialogFor: self event]]