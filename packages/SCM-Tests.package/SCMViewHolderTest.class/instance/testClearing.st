testing
testClearing
	
	self subject load: #agenda.
	self subject clear.	
	self assert: self subject submorphs size equals: 0.