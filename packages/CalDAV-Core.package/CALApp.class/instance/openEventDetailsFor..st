toolbuilder
openEventDetailsFor: anEvent

	((self findCalendarFor: anEvent) isReadOnly)
		ifTrue: [self openShowEventDialogFor: anEvent]
		ifFalse: [self openEditEventDialogFor: anEvent]