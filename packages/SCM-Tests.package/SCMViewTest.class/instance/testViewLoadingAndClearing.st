testing
testViewLoadingAndClearing

	self subject load: #agenda.
	self assert: self subject submorphs first class equals: ScrollPane.
	
	self subject clear.
	self assert: self subject submorphs size equals: 0.
	
	self subject load: #week.
	self assert: self subject submorphs first class equals: SCMWeekView.