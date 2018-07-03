initialize
newFromICEvent: anEvent

	| event participants attendees |
	
	event := self new.
	participants := String new.
	attendees := anEvent attendees asOrderedCollection.
	attendees ifNotEmpty: [ 
		attendees allButLastDo: [ :each | participants := participants , each , ', ' ].
		participants := participants , attendees last ].
	anEvent isFullDayEvent
		ifTrue: [event begin: anEvent start start. event end: anEvent end start. event makeFullDay]
		ifFalse: [event begin: anEvent start. event end: anEvent end].
	event
		title: anEvent summary;
		description: anEvent textualDescription;
		location: anEvent location;
		participants: participants.
	^ event
	