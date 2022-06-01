saving
saveEvent

	self eventCalendar: (self availableCalendars at: (eventCalendarDropDown getCurrentSelectionIndex)).
	
	"TOdo: use better textfields or read input cleanly"
	self eventCalendar addEvent: (SCMEvent new
		title: self eventTitle contents string;
		beginYear: self eventBeginYear contents string asInteger;
		beginMonth: self eventBeginMonth contents string asInteger;
		beginDay: self eventBeginDay contents string asInteger;
		beginHour: self eventBeginHour contents string asInteger;
		beginMinute: self eventBeginMinute contents string asInteger;
		endYear: self eventEndYear contents string asInteger;
		endMonth: self eventEndMonth contents string asInteger;
		endDay: self eventEndDay contents string asInteger;
		endHour: self eventEndHour contents string asInteger;
		endMinute: self eventEndMinute contents string asInteger;
		description: self eventDescription contents string;
		location: self eventLocation contents string;
		participants: self eventParticipants contents string).
		
	self eventCalendar saveToDisk.
	self owner closeBoxHit