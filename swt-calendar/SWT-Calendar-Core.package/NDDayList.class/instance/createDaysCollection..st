as yet unclassified
createDaysCollection: aNumber

	|listOfDays|
	listOfDays := PHListGroupItem new.
	1 to: aNumber do: [:x | 
		"pneis vertical: true."
		listOfDays := PHListGroupItem label: ((Date today + x days - 1 days)weekday )asString.
		listOfDays add: (NDDayButton new; text: (Date today + x days - 1 days) asString"; super label: 'hurz'").
		self add: listOfDays.].