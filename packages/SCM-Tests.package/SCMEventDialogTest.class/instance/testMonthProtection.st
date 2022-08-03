testing
testMonthProtection

	| oldValue |
	
	self eventDialog load: self demoEvent.
	oldValue := self eventDialog beginMonth.
	self eventDialog updateBeginMonth: '13' asText.
	self assert: self eventDialog beginMonth = oldValue.
	self eventDialog updateBeginMonth: '-4' asText.
	self assert: self eventDialog beginMonth = oldValue