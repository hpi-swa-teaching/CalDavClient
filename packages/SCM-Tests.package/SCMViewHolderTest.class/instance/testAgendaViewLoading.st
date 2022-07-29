testing
testAgendaViewLoading

	self subject currentView: #agenda.
	self assert: self getLoadedViewClass equals: SCMAgendaView