testing
testAccessorsChangingEnd
	| event |
	
	event := self createEvent.
		
	self assert: (event end  = self end).
	event 
		endDay: 23;
		endMonth: 11;
		endYear: 1998;
		endHour: 12;
		endMinute: 12.
	self 
		assert: (event endDay = 23);
		assert: (event endMonth = 11);
		assert: (event endYear = 1998);
		assert: (event endHour = 12);
		assert: (event endMinute = 12).