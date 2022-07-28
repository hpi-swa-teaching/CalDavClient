testing
testAgendaViewLoading

	self subject load: #agenda.
	self assert: self getLoadedViewClass equals: SCMAgendaView