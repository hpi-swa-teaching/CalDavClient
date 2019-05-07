testing
testEventPropertiesChanges

	self eventDialog event: self demoEvent.
	
	self eventDialog eventBeginDay: 1.
	self assert: self eventDialog eventBeginDay = 1 asString.
	self eventDialog eventBeginMonth: 2.
	self assert: self eventDialog eventBeginMonth = 2 asString.
	self eventDialog eventBeginYear: 1999.
	self assert: self eventDialog eventBeginYear = 1999 asString.
	self eventDialog eventBeginHour: 5.
	self assert: self eventDialog eventBeginHour = 5 asString.
	self eventDialog eventBeginMinute: 6.
	self assert: self eventDialog eventBeginMinute = 6 asString.
	
	self eventDialog eventEndDay: 10.
	self assert: self eventDialog eventEndDay = 10 asString.
	self eventDialog eventEndMonth: 8.
	self assert: self eventDialog eventEndMonth = 8 asString.
	self eventDialog eventEndYear: 2002.
	self assert: self eventDialog eventEndYear = 2002 asString.
	self eventDialog eventEndHour: 7.
	self assert: self eventDialog eventEndHour = 7 asString.
	self eventDialog eventEndMinute: 8.
	self assert: self eventDialog eventEndMinute = 8 asString.