testing
testIsValidDates

	|eventWithWrongOrder|
	eventWithWrongOrder := self createEvent.
	eventWithWrongOrder 
		begin: self end;
		end: self begin.
	self assert: (eventWithWrongOrder isValid = CALEvent endBeforeStartError)
	


	