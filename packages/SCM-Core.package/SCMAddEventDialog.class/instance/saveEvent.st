saving
saveEvent
	
	self eventCalendarDropDown getCurrentSelectionIndex = 0 ifTrue: [^ self inform: 'Select calender!'].
	self eventCalendar: (self availableCalendars at: (self eventCalendarDropDown getCurrentSelectionIndex)).
	
	"TOdo: use better textfields or read input cleanly"
	self eventCalendar addEvent: (SCMEvent new
		title: self eventTitle textMorph text string;
		begin: (DateAndTime
			year: self eventBeginYear textMorph text string asInteger
			month: self eventBeginMonth textMorph text string asInteger
			day: self eventBeginDay textMorph text string asInteger
			hour:	self eventBeginHour textMorph text string asInteger
			minute: self eventBeginMinute textMorph text string asInteger);
		end: (DateAndTime
			year: self eventEndYear textMorph text string asInteger
			month: self eventEndMonth textMorph text string asInteger
			day: self eventEndDay textMorph text string asInteger
			hour:	self eventEndHour textMorph text string asInteger
			minute: self eventEndMinute textMorph text string asInteger);
		description: self eventDescription textMorph text string;
		location: self eventLocation textMorph text string;
		participants: self eventParticipants textMorph text string).
		
	self app reload.
	self app save: self eventCalendar.
	self owner closeBoxHit