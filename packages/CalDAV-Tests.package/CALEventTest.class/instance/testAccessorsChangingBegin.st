testing
testAccessorsChangingBegin
	| event |
	
	event := self createEvent.
		
	self assert: (event begin  = self begin).
	event 
		beginDay: 23;
		beginMonth: 11;
		beginYear: 1998;
		beginHour: 12;
		beginMinute: 12.
	self assert: (event beginDay = 23).
	self assert: (event beginMonth = 11).
	self assert: (event beginYear = 1998).
	self assert: (event beginHour = 12).
	self assert: (event beginMinute = 12).