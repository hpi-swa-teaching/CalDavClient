as yet unclassified
testAccessors

	| event |
	
	event := self pastEvent.
	self assert: event begin equals: self pastEventBegin.
	self assert: event end equals: self pastEventEnd.
	self assert: event title equals: self pastEventTitle.
	self assert: event description equals: self pastEventDescription.
	self assert: event participants equals: self pastEventParticipants.
	self assert: event color equals: self pastEventColor