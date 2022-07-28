testing
testWeekViewLoading
	
	self subject load: #week.
	self assert: self getLoadedViewClass equals: SCMWeekView