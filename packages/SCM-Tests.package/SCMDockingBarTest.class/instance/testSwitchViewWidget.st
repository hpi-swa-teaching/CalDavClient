testing
testSwitchViewWidget

	| widget |
	
	self assert: (self subject widgets includesKey: #switch).
	widget := self subject widgets at: #switch.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #switch