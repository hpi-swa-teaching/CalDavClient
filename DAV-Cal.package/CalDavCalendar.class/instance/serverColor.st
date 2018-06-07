accessing
serverColor

	^ Color fromString: (self serverData at: #'ical:calendar-color' ifAbsent: ['#00000000'])