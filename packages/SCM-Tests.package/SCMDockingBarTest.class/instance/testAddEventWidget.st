testing
testAddEventWidget
	
	| widget |
	widget := self subject widgets at: #addEvent.
	self assert: widget actionSelector equals: #openAddEventDialog.
	self assert: widget target equals: self app