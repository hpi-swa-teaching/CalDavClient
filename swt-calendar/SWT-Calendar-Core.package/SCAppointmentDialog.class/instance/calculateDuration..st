updating
calculateDuration: eventTitle

	| durationCalculator |
	
	durationCalculator := ((mock serverData) end  - (mock serverData) start).
	(durationCalculator asSeconds) >= 60
		ifTrue: [eventTitle text: eventTitle text, (String with: Character cr), 'Duration: '].
	(durationCalculator days) >= 1
		ifTrue: [eventTitle text: eventTitle text, durationCalculator days asString, 'd '].
	(durationCalculator hours) >= 1
		ifTrue: [eventTitle text: eventTitle text, durationCalculator hours asString, 'h '].
	(durationCalculator minutes) >= 1
		ifTrue: [eventTitle text: eventTitle text, durationCalculator minutes asString, 'm '].
	^eventTitle