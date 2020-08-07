testing
testDuration2

	|dayItem label|

	dayItem := SCDayItem new.
	dayItem events: eventCollection2.

	label := ((dayItem submorphs at: 2) submorphs at: 1) text.
	self assert: ('Title: testEvent', (String with: Character cr), 'Start: 6:00 am', (String with: Character cr), 'Duration: 1d 2h ') equals: label.

