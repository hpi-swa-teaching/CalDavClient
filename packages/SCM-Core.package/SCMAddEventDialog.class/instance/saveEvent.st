part creation
saveEvent
	
	self eventCalendarDropDown getCurrentSelectionIndex = 0
		ifTrue: [^ self inform: 'Select calender!'].
	self eventCalendar: (self availableCalendars
		at: (self eventCalendarDropDown getCurrentSelectionIndex)).
	
	"To do: use better textfields or read input cleanly"
	self eventCalendar addEvent: (SCMEvent new
		title: self title textMorph text string;
		begin: (DateAndTime
			year: self beginYear textMorph text string asInteger
			month: self beginMonth textMorph text string asInteger
			day: self beginDay textMorph text string asInteger
			hour:	self beginHour textMorph text string asInteger
			minute: self beginMinute textMorph text string asInteger);
		end: (DateAndTime
			year: self endYear textMorph text string asInteger
			month: self endMonth textMorph text string asInteger
			day: self endDay textMorph text string asInteger
			hour:	self endHour textMorph text string asInteger
			minute: self endMinute textMorph text string asInteger);
		description: self description textMorph text string;
		location: self location textMorph text string;
		participants: self participants textMorph text string).
		
	self app reload.
	self app save: self eventCalendar.
	self owner closeBoxHit