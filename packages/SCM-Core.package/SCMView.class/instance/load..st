accessing
load: aSCMViewType

	self currentView: aSCMViewType.
	self currentView = #agenda
		ifTrue: [self loadAgendaView]
		ifFalse: [self loadWeekView]