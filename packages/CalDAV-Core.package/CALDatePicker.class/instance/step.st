CalendarMorph
step

	shouldUpdate
		ifTrue: [self update.
			stepTime := self minimumStepTime.
			shouldUpdate := false]
		ifFalse: [self incrementStepTime]