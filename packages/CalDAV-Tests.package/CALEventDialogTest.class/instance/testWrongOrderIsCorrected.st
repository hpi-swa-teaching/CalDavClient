testing
testWrongOrderIsCorrected

	editDialog event: (CALEvent new
		title: 'Titel';
		begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 0);
		end: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 5)).
	
	editDialog eventBeginMonth: 6.
	self assert: editDialog eventEndMonth equals: (6 asString).
	self assert: editDialog eventEndHour equals: (11 asString)