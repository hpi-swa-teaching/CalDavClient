testing
testViewSwitchingToWeek

	self subject currentView: #agenda.
	self subject switch.
	self assert: self getLoadedViewClass equals: SCMWeekView.