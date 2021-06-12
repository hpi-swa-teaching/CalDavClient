toolbuilder
calculateDaysOfWeek: aNumber

	| startDate days |
	startDate := self startDateForWeek: aNumber.
	days := OrderedCollection new.
	aNumber = 1
		ifTrue: [0 to: 6 - self differenceToMonday do: [:each | days add: (startDate addDays: each)]]
		ifFalse: [0 to: 6 do: [:each | days add: (startDate addDays: each)]].
	^ days
