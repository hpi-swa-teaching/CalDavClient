testing
testDuration1

	|dayItem label|

	dayItem := SCDayItem new.
	dayItem events: eventCollection1.

	label := ((dayItem submorphs at: 2) submorphs at: 1) text.
	self assert: ('Title: testEvent', (String with: Character cr), 'Start: 6:00 am', (String with: Character cr), 'Duration: 1d ') equals: label.


