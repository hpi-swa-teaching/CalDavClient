actions
saveEvent

	| event begin end |
	
	begin := DateAndTime 
		year: eventBeginYear asNumber
		month: eventBeginMonth asNumber
		day: eventBeginDay asNumber
		hour: eventBeginHour asNumber
		minute: eventBeginMinute asNumber.
	end := DateAndTime 
		year: eventEndYear asNumber
		month: eventEndMonth asNumber
		day: eventEndDay asNumber
		hour: eventEndHour asNumber
		minute: eventEndMinute asNumber.
	
	event := (CALEvent new)
		title: self eventTitle;
		description: self eventDescription;
		begin: begin;
		end: end;
		location: self eventLocation;
		participants: self eventParticipants;
		yourself.
	
	event isValid = '' ifTrue:[  
		self parent addEvent: event.
		self close]