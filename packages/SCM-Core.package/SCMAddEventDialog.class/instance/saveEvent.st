saving
saveEvent
	
	self eventCalendarDropDown getCurrentSelectionIndex = 0 ifTrue: [^ self inform: 'Select calender!'].
	self eventCalendar: (self availableCalendars at: (self eventCalendarDropDown getCurrentSelectionIndex)).
	
	"TOdo: use better textfields or read input cleanly"
	self eventCalendar addEvent: (SCMEvent new
		title: self eventTitle contents string;
		begin: (DateAndTime
			year: self eventBeginYear contents string asInteger
			month: self eventBeginMonth contents string asInteger
			day: self eventBeginDay contents string asInteger
			hour:	self eventBeginHour contents string asInteger
			minute: self eventBeginMinute contents string asInteger);
		end: (DateAndTime
			year: self eventEndYear contents string asInteger
			month: self eventEndMonth contents string asInteger
			day: self eventEndDay contents string asInteger
			hour:	self eventEndHour contents string asInteger
			minute: self eventEndMinute contents string asInteger);
		description: self eventDescription contents string;
		location: self eventLocation contents string;
		participants: self eventParticipants contents string).
		
	self app reload.
	self app save: self eventCalendar.
	self owner closeBoxHit