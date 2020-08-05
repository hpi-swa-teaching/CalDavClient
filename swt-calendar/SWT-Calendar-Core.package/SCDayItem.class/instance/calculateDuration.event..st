event handling
calculateDuration: eventTitle event: anEvent
	
	| durationCalculator |
	
	durationCalculator := ((anEvent serverData) end  - (anEvent serverData) start).
		(durationCalculator days) >= 1
			ifTrue: [eventTitle text: eventTitle text, durationCalculator days asString, 'd '].
		(durationCalculator hours) >= 1
			ifTrue: [eventTitle text: eventTitle text, durationCalculator hours asString, 'h '].
		(durationCalculator minutes) >= 1
			ifTrue: [eventTitle text: eventTitle text, durationCalculator minutes asString, 'm '].
	^eventTitle