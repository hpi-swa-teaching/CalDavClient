creation
createNewEvent

	| startDateAndTime |

	
	mock := calendar newEvent.
	mock summary: self titleArea text.
	(mock summary size) = 0 
		ifTrue: [self handleError:'Please enter a title for the appointment'. ^nil].
	self setDateAndTime.
	self filterDateAndTime.
	startDate := (startDay asString,' ', startMonth,' ',startYear asString).
	startDateAndTime := ((startDate asDate) + startHour hours + startMinute minutes) 	asDateAndTime.
	[mock start: startDateAndTime.
	mock end: mock start + 1 hours.] on: Error do: [self handleError: 'Please enter a valid 	date'. ^nil.].