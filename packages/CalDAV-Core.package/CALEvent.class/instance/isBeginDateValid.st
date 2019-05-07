validation
isBeginDateValid
	
	[self begin] on: Error do: [^ false].
	^ true