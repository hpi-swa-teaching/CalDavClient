testing
testInvalidEventPropertiesChanges2

	self eventDialog updateBeginDay:  '-1' asText.
	self assert: self eventDialog beginDay = ''.
	self eventDialog updateBeginMonth: '-1' asText.
	self assert: self eventDialog beginMonth = ''.
	self eventDialog updateBeginYear: '-1' asText.
	self assert: self eventDialog beginYear = ''.
	self eventDialog updateBeginHour:  '-1' asText.
	self assert: self eventDialog beginHour = ''.
	self eventDialog updateBeginMinute: '-1' asText.
	self assert: self eventDialog beginMinute = ''.
	
	self eventDialog updateEndDay: '-1' asText.
	self assert: self eventDialog endDay = ''.
	self eventDialog updateEndMonth: '-1' asText.
	self assert: self eventDialog endMonth = ''.
	self eventDialog updateEndYear: '-1' asText.
	self assert: self eventDialog endYear = ''.
	self eventDialog updateEndHour: '-1' asText.
	self assert: self eventDialog endHour = ''.
	self eventDialog updateEndMinute: '-1' asText.
	self assert: self eventDialog endMinute = ''.