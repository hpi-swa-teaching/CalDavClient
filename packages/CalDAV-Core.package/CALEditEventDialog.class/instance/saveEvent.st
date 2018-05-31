as yet unclassified
saveEvent

	| event |
	event := (CALEvent new)
		title: self eventTitle;
		description: self eventDescription;
		begin: self event begin;
		end: self event end;
		location: self eventLocation;
		participants: self eventParticipants;
		yourself.
	
	event isValid
		ifTrue: [self parent deleteEvent: self oldEvent.
				self parent addEvent: event.
				self close]