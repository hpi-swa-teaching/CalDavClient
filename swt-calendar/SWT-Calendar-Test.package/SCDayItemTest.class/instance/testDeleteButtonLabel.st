testing
testDeleteButtonLabel

	|dayItem label|

	dayItem:= SCDayItem new.
	dayItem events: eventCollection3.

	label:= ((dayItem submorphs at: 2) submorphs at: 2) text.

	self assert: 'delete' equals: label.