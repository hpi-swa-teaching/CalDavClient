actions
beginDateChanged: aDate
	
	self 
		eventBeginYear: aDate year asString;
		eventBeginMonth: aDate month asString;
		eventBeginDay: aDate dayOfMonth asString;
		eventBeginHour: aDate hours asString; 
		eventBeginMinute: aDate minutes asString.
	