testing
testClearing
	
	self subject currentView: #agenda.
	self subject clear.	
	self assert: self subject submorphs size equals: 0.