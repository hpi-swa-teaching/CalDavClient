as yet unclassified
createEvents

	| events yesterday theDayAfterTomorrow |
	
	yesterday := DateAndTime today asDate subtractDays: 1.
	theDayAfterTomorrow := DateAndTime today asDate addDays: 2.
	
	events := SortedCollection new.
	{yesterday . theDayAfterTomorrow} asOrderedCollection do: [:each |
		events add: (SCMEvent new
		title: 'Bank ausrauben';
		begin: (DateAndTime
			year: each year
			month: each monthIndex
			day: each dayOfMonth
			hour: 10
			minute: 0);
		end: (DateAndTime
			year: each year
			month: each monthIndex
			day: each dayOfMonth
			hour: 11
			minute: 30);
		location: 'Bank';
		color: Color blue)].
	
	self yesterdayEvent: events first.
	self dayAfterTomorrowEvent: events second.

	^ events