testing
testUpdateBeginDate

	| aDateAndTime anotherDateAndTime |
	aDateAndTime := (DateAndTime year: 2001 month: 6 day: 15).
	anotherDateAndTime := (DateAndTime year: 2022 month: 7 day: 14).
	self eventDialog beginDateAndTime: aDateAndTime.
	self assert: (self eventDialog beginDateAndTime = aDateAndTime).
	self eventDialog updateBeginDateAndTime: anotherDateAndTime.
	self assert: (self eventDialog beginDateAndTime = anotherDateAndTime).