accessing
dayAt: aNumber

	| firstWeekDay |
	
	firstWeekDay := self firstOfMonth dayOfWeek.
	(firstWeekDay = 1) 
		ifTrue:  [firstWeekDay := 7]
		ifFalse: [firstWeekDay := firstWeekDay - 1].
	^ aNumber - firstWeekDay + 1