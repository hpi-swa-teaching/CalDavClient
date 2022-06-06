testing
testCreateEventWidget
	
	| widget |
     widget := self subject widgets at: #createEvent.
     self assert: widget label equals: 'Create Event'.
	self assert: widget actionSelector equals: #createWithCalendar:.
     self assert: widget target equals: SCMEventForm