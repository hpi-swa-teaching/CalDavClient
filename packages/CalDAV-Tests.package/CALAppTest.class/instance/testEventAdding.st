as yet unclassified
testEventAdding

	| event |
	
	app selectedCalendar 
		addEvent: self demoEvent;
		addEvent: self demoEvent2.
	event := app selectedCalendar events first.
	self assert: event title = 'Meeting'.
	self assert: event location = 'Office'.
	event := app selectedCalendar events last.
	self assert: event title = 'Meeting2'.
	self assert: event location = 'Kitchen'