as yet unclassified
createDaysCollection: aNumber

	| dayButton |
	
	self listOfDays: PHListGroupItem new.
	1 to: aNumber do: [:x | 
		dayButton := NDDayButton new.
		NDDayButton dayList: self.
		listOfDays := PHListGroupItem label: (Date today + x days - 1 days)weekday.", ' ' , (Date today + x days - 1 days)."
		listOfDays add: (dayButton date:  Date today + x days - 1 days).
		self add: listOfDays.].