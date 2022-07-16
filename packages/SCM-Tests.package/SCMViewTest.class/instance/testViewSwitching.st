testing
testViewSwitching

	self subject load: #agenda.
	self subject switch.
	self assert: self subject firstSubmorph scroller firstSubmorph class equals: SCMWeekView.
	self subject switch.
	self assert: self subject firstSubmorph scroller firstSubmorph class equals: SCMAgendaView.