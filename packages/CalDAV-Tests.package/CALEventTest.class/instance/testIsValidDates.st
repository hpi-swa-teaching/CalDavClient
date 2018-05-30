testing
testIsValidDates

	|eventWithWrongOrder|
	eventWithWrongOrder := self createEvent.
	eventWithWrongOrder 
		begin: self end;
		end: self begin.
	Transcript show: eventWithWrongOrder isValid.
	self assert: (eventWithWrongOrder isValid = CALEvent endBeforeStartError)
	


	