as yet unclassified
testViewSwitching

	self subject load: #agenda.
	self subject switch.
	self assert: self subject submorphs first class equals: SCMWeekView.
	self subject switch.
	self assert: self subject submorphs first class equals: SCMAgendaView.