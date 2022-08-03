validating
isEndDateAndTimeValid
	
	[self end] 
		on: Error 
		do: [^ false].
	^ true