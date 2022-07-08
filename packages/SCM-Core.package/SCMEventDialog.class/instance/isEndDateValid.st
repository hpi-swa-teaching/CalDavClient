accessing
isEndDateValid
	
	[self endDate] 
		on: Error 
		do: [^ false].
	^ true