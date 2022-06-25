save and load
addEvent: aSCMEvent

	self selectedEditableCalendar addEvent: aSCMEvent.
	self saveToDisk: self selectedEditableCalendar.
	self changed: #calendarChanged