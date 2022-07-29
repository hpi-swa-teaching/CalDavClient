testing
testWeekViewLoading
	
	self subject currentView: #week.
	self assert: self getLoadedViewClass equals: SCMWeekView