initialization
mouseUp: anEvent

	self event calendar isReadOnly
		ifTrue: [self openShowEventDialogFor: self event]
		ifFalse: [self openEditEventDialogFor: self event]
		