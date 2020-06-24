as yet unclassified
createDaysCollection: aNumber
	| dayButton listOfDays ndDayList ndCal allEvents dayEvents| 
	listOfDays := PHListGroupItem new.
	ndCal := NDCalDavCalendar nDCal.
	allEvents := OrderedCollection new.
	ndCal eventsDictionary do:[:each | 
		allEvents add: each serverData.].
	1 to: aNumber do: [:x | 
		dayEvents := OrderedCollection new.
		ndDayList := NDDayList new.
		dayButton := NDDayButton new.
		NDDayButton dayList: self.
		"listOfDays := PHListGroupItem label: (Date today + x days - 1 days)weekday, ' ' , (Date today + x days - 1 days).
		listOfDays add: (dayButton date:  Date today + x days - 1 days).
		listOfDays vertical: false."
		ndDayList dateLabel: (Date today + x days - 1 days)weekday, ' ' , (Date today + x days - 1 days).
		allEvents do: [:each | 
			"Transcript show: each start asDate asString,' ', (Date today + x days - 1 days)asString,'
'."
			each start asDate asString = (Date today + x days - 1 days)asString
				ifTrue: [dayEvents add: each.
						allEvents remove: each]. ].
		"ndDayList events: dayEvents."
		"ndDayList add: (dayButton date:  Date today + x days - 1 days)."
		ndDayList date: (Date today + x days - 1 days).
		ndDayList vertical: false.
		"self add: listOfDays."
		self add: ndDayList.].