creation
createNewEvent

	| startDateAndTime filtered |

	
	mock := calendar newEvent.
	mock summary: self titleArea text.
	mock summary size = 0 
		ifTrue: [self handleError:'Please enter a title for the appointment'. ^false].
	self setDateAndTime.
	filtered := self filterDateAndTime.
	filtered = false ifTrue: [^false].
	startDate := (startDay asString,' ', startMonth,' ',startYear asString).
	[startDateAndTime := (startDate asDate + startHour hours + startMinute minutes) asDateAndTime] on: Error do: [self handleError: 'Please enter a valid date'. ^false.].
	mock start: startDateAndTime.
	mock end: mock start + self standardDuration.