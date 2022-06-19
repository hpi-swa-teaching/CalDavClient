event handling
mouseUp: anEvent

	self image: self buttonForm.
	(self containsPoint: anEvent cursorPoint)
		ifTrue: [self doButtonAction]