persistence
calendarData
	
	| dataCollection |
	
	dataCollection := OrderedCollection new.
	dataCollection 
		add: self color; 
		add: self eventsData; 
		yourself.
	^ STON toString: dataCollection asOrderedCollection