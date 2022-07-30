testing
testSwitchViewWidget

	| widget |
	
	self assert: (self subject buttons includesKey: #switch).
	widget := self subject buttons at: #switch.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #switch