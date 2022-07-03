testing
testWrongOrderIsCorrected

	self editDialog load: (SCMEvent new
		title: 'Titel';
		begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 0);
		end: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 5));
		color: Color green.
	
	self editDialog updateBeginMonth: '6' asText.
	self assert: self editDialog endMonth equals: 6 asString.
	self assert: self editDialog endHour equals: 11 asString