testing
testAddEventWidget
	
	| widget |
		
	self assert: (self subject widgets includesKey: #addEvent).
	widget := self subject widgets at: #addEvent.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #openAddEventDialog