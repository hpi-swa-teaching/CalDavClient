testing
testDateIsHighlighted

	self editDialog load: (SCMEvent new
		title: 'Titel';
		begin: (DateAndTime year: 2018 month: 5 day: 17 hour: 10 minute: 5);
		end: (DateAndTime year: 2018 month: 6 day: 17 hour: 10 minute: 0);
		calendar: SCMCalendar new;
		color: Color green).
	
	self editDialog updateBeginMonth: '7' asText.
	self assert: editDialog beginFieldsColor equals: self editDialog defaultHighlightColor.