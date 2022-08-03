testing
testDateIsHighlighted2

	self editDialog load: (SCMEvent new
		title: 'Titel';
		begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 5);
		end: (DateAndTime year: 2018 month: 6 day: 17 hour: 10 minute: 0);
		color: Color green;
		calendar: self calendar).
	
	self editDialog updateEndMonth: '4' asText.
	self assert: editDialog endFieldsColor equals: self editDialog defaultHighlightColor.