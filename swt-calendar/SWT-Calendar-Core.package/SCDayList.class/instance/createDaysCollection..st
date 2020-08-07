creation
createDaysCollection: aNumber
	
	| listOfDays allEvents dayEvents | 
	
	listOfDays := PHListGroupItem new.
	allEvents := OrderedCollection new.
	calendar eventsDictionary do:[:each | 
		allEvents add: each serverData.].
	0 to: aNumber - 1 do: [:x | 
		| currentDay ndDayList|
		currentDay := Date today + x days.
		dayEvents := OrderedCollection new.
		ndDayList := SCDayItem new.
		ndDayList calendar: calendar.
		ndDayList dateLabel: currentDay weekday, ' ' , currentDay.
		allEvents do: [:each | 
			each start asDate asString = currentDay asString
				ifTrue: [dayEvents add: each.
						allEvents remove: each]. ].
		ndDayList date: currentDay.
		ndDayList vertical: false.
		self add: ndDayList.].