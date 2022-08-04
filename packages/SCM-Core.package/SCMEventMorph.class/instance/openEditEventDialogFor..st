actions
openEditEventDialogFor: aSCMEvent

	SCMEditEventDialog
		openWith: SCMCalendarRepository get
		forEvent: aSCMEvent