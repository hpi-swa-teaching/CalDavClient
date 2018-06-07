as yet unclassified
newFromICEvent: anEvent

	| event participants attendees |
	
	event := self new.
	participants := String new.
	attendees := anEvent attendees asOrderedCollection.
	attendees allButLastDo: [:each | participants := participants , each , ', '].
	participants := participants , attendees last.
	event
		title: anEvent summary;
		description: anEvent textualDescription;
		begin: anEvent start;
		end: anEvent end;
		location: anEvent location;
		participants: participants.
	
	^ event
	