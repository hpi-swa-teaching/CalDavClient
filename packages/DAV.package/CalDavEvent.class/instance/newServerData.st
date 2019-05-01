accessing
newServerData

	^ ICEvent new
		stamp: DateAndTime now;
		created: DateAndTime now;
		start: DateAndTime now;
		end: DateAndTime now + 15 minutes;
		summary: ''
		