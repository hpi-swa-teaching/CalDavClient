running
setUp

	| event1 event2 event3 |
	event1 := (SCMEvent new
		title: 'Event 1';
		begin: (DateAndTime year: 2017 month: 4 day: 18 hour: 16 minute: 15);
		end: (DateAndTime year: 2017 month: 4 day: 18 hour: 19 minute: 0);	
		yourself).	
	event2 := (SCMEvent new
		title: 'Event 2';
		begin: (DateAndTime year: 2022 month: 1 day: 7 hour: 7 minute: 30);
		end: (DateAndTime year: 2022 month: 1 day: 7 hour: 8 minute: 15);	
		yourself).
	
	event3 := (SCMEvent new
		title: 'Event 3';
		begin: Date today;
		end: Date today;	
		yourself).
	self wantsToTest: (SCMAgendaView createWithEvents: {event1 . event2 . event3} andStartDate: DateAndTime today asDate)