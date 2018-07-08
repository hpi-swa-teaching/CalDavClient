accessing
dayAt: aNumber

	| firstWeekDay |
	
	firstWeekDay := self firstOfMonth dayOfWeek.
	"remap weekdays from sunday=1 to monday=1"
	(firstWeekDay = 1) 
		ifTrue:  [firstWeekDay := 7]
		ifFalse: [firstWeekDay := firstWeekDay - 1].
	^ aNumber - firstWeekDay + 1