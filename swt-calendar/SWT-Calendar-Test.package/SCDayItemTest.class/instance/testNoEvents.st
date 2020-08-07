testing
testNoEvents

	|dayItem label|

	dayItem := SCDayItem new.
	dayItem events: emptyCollection.

	label := (dayItem submorphs at: 2) text.

	self assert: '- There are no events for this day' equals: label.