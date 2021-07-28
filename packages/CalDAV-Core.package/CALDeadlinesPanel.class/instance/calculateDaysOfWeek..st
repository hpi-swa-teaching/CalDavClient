toolbuilder
calculateDaysOfWeek: aNumber

	| days numberOfDays |
	
	days := OrderedCollection new.
	aNumber = 1
		ifTrue: [numberOfDays := 6 - self differenceToMonday]  
		ifFalse: [numberOfDays := 6].
	0 to: numberOfDays do: [:each | days add: ((self startDateForWeek: aNumber) addDays: each)].
	^ days
