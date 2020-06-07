testing
testWrongOrderIsCorrected

	self editDialog event: (CALEvent new
		title: 'Titel';
		begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 0);
		end: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 5)).
	
	self editDialog eventBeginMonth: 6.
	self assert: self editDialog eventEndMonth equals: (6 asString).
	self assert: self editDialog eventEndHour equals: (11 asString)