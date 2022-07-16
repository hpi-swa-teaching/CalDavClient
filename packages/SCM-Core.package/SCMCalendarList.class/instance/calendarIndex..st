accessing
calendarIndex: aNumber

	(self reselectedCalendar: aNumber)
		ifTrue: [self changed: #calendarSelected. ^ self].
	(self selectedOtherCalendar: aNumber)
		ifTrue: [calendarIndex := aNumber. 
				self changed: #calendarIndex.
				self changed: #calendarSelected]