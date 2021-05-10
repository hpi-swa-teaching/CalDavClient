as yet unclassified
calculateDaysOfWeek: aNumber

	|startDate days|
	startDate := self weekLineDateFor: aNumber .
	days := OrderedCollection new.
	0 to: 6 do: [:each| days add: (startDate addDays: each)].
	^days
