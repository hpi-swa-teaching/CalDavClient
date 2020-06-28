as yet unclassified
createDaysCollection: aNumber
	| listOfDays ndDayList ndCal allEvents dayEvents| 
	listOfDays := PHListGroupItem new.
	ndCal := NDCalDavCalendar nDCal.
	allEvents := OrderedCollection new.
	ndCal eventsDictionary do:[:each | 
		allEvents add: each serverData.].
	1 to: aNumber do: [:x | 
		dayEvents := OrderedCollection new.
		ndDayList := NDDayList new.
		ndDayList dateLabel: (Date today + x days - 1 days)weekday, ' ' , (Date today + x days - 1 days).
		allEvents do: [:each | 
			each start asDate asString = (Date today + x days - 1 days)asString
				ifTrue: [dayEvents add: each.
						allEvents remove: each]. ].
		ndDayList date: (Date today + x days - 1 days).
		ndDayList vertical: false.
		self add: ndDayList.].