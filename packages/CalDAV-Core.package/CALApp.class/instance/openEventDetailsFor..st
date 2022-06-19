subwindows
openEventDetailsFor: aCALEvent

	((self findCalendarFor: aCALEvent) isReadOnly)
		ifTrue: [self openShowEventDialogFor: aCALEvent]
		ifFalse: [self openEditEventDialogFor: aCALEvent]