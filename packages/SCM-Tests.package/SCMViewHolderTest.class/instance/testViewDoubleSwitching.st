testing
testViewDoubleSwitching

	self subject currentView: #agenda.
	2 timesRepeat: [self subject switch].
	self assert: self getLoadedViewClass equals: SCMAgendaView.