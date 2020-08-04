as yet unclassified
createDaysCollection: aNumber
	| listOfDays ndDayList allEvents dayEvents| 
	listOfDays := PHListGroupItem new.
	allEvents := OrderedCollection new.
	calendar eventsDictionary do:[:each | 
		allEvents add: each serverData.].
	1 to: aNumber do: [:x | 
		dayEvents := OrderedCollection new.
		ndDayList := SCDayItem new.
		ndDayList calendar: calendar.
		ndDayList dateLabel: (Date today + x days - 1 days)weekday, ' ' , (Date today + x days - 1 days).
		allEvents do: [:each | 
			each start asDate asString = (Date today + x days - 1 days)asString
				ifTrue: [dayEvents add: each.
						allEvents remove: each]. ].
		ndDayList date: (Date today + x days - 1 days).
		ndDayList vertical: false.
		self add: ndDayList.].