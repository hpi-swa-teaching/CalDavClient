testing
testViewSwitching

	self subject currentView: #agenda.
	self subject switch.
	self assert: self subject firstSubmorph scroller firstSubmorph class equals: SCMWeekView.
	self subject switch.
	self assert: self subject firstSubmorph scroller firstSubmorph class equals: SCMAgendaView.
	
	"OOODER SOWAS WIE
	| currentView |
	
	currentView := self app view currentView.
	self app switch. 
	self assert: self app view currentView ~= currentView.
	self app switch.
	self assert: self app view currentView = currentView"