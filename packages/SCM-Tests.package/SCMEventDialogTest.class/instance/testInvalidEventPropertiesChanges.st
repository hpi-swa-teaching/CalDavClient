testing
testInvalidEventPropertiesChanges

	self eventDialog updateBeginDay:  'Eins' asText.
	self assert: self eventDialog beginDay = ''.
	self eventDialog updateBeginMonth: 'Zwei' asText.
	self assert: self eventDialog beginMonth = ''.
	self eventDialog updateBeginYear: 'Zweitausend' asText.
	self assert: self eventDialog beginYear = ''.
	self eventDialog updateBeginHour:  'Fünf' asText.
	self assert: self eventDialog beginHour = ''.
	self eventDialog updateBeginMinute: 'Sechs' asText.
	self assert: self eventDialog beginMinute = ''.
	
	self eventDialog updateEndDay: 'Zehn' asText.
	self assert: self eventDialog endDay = ''.
	self eventDialog updateEndMonth: 'Acht' asText.
	self assert: self eventDialog endMonth = ''.
	self eventDialog updateEndYear: 'Zweitausendeins' asText.
	self assert: self eventDialog endYear = ''.
	self eventDialog updateEndHour: 'Sieben' asText.
	self assert: self eventDialog endHour = ''.
	self eventDialog updateEndMinute: 'Acht' asText.
	self assert: self eventDialog endMinute = ''