accessing
isBeginDateValid
	
	[self beginDate] 
		on: Error 
		do: [^ false].
	^ true