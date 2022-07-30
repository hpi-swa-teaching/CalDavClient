testing
testAddEventWidget
	
	| widget |
		
	self assert: (self subject buttons includesKey: #addEvent).
	widget := self subject buttons at: #addEvent.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #openAddEventDialog