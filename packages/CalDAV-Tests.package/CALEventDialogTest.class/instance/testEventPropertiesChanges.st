as yet unclassified
testEventPropertiesChanges

	eventDialog event: self testEvent.
	
	eventDialog eventBeginDay: 1.
	self assert: eventDialog eventBeginDay = 1 asString.
	eventDialog eventBeginMonth: 2.
	self assert: eventDialog eventBeginMonth = 2 asString.
	eventDialog eventBeginYear: 1999.
	self assert: eventDialog eventBeginYear = 1999 asString.
	eventDialog eventBeginHour: 5.
	self assert: eventDialog eventBeginHour = 5 asString.
	eventDialog eventBeginMinute: 6.
	self assert: eventDialog eventBeginMinute = 6 asString.
	
	eventDialog eventEndDay: 10.
	self assert: eventDialog eventEndDay = 1 asString.
	eventDialog eventEndMonth: 8.
	self assert: eventDialog eventEndMonth = 2 asString.
	eventDialog eventEndYear: 2002.
	self assert: eventDialog eventEndYear = 2002 asString.
	eventDialog eventEndHour: 7.
	self assert: eventDialog eventEndHour = 5 asString.
	eventDialog eventEndMinute: 8.
	self assert: eventDialog eventEndMinute = 6 asString.