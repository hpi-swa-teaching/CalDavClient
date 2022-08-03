validating
isBeginDateAndTimeValid

	[self begin]
		on: Error
		do: [^ false].
	^ true