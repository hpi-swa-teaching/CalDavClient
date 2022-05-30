saving
saveEvent

	self eventCalendar: self availableCalendars first.  "to do: generalize"
	
	"TOdo: use better textfields or read input cleanly"
	self eventCalendar addEvent: (SCMEvent new
		title: self eventTitle contents string;
		beginDay: self eventBeginDay contents string asInteger).
	
	self eventCalendar saveToDisk.
	self owner closeBoxHit