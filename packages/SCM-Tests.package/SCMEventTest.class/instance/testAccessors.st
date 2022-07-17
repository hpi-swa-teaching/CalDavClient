testing
testAccessors

	| event |
	
	event := self event.
	self assert: event begin equals: self eventBegin.
	self assert: event end equals: self eventEnd.
	self assert: event title equals: self eventTitle.
	self assert: event description equals: self eventDescription.
	self assert: event participants equals: self eventParticipants.
	self assert: event color equals: self eventColor