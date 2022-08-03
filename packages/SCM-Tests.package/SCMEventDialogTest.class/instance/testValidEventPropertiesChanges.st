testing
testValidEventPropertiesChanges

	self eventDialog updateBeginDay:  '1'.
	self assert: self eventDialog beginDay = 1 asString.
	self eventDialog updateBeginMonth: '2'.
	self assert: self eventDialog beginMonth = 2 asString.
	self eventDialog updateBeginYear: '1999'.
	self assert: self eventDialog beginYear = 1999 asString.
	self eventDialog updateBeginHour:  '5'.
	self assert: self eventDialog beginHour = 5 asString.
	self eventDialog beginMinute: '6'.
	self assert: self eventDialog beginMinute = 6 asString.
	
	self eventDialog updateEndDay: '10'.
	self assert: self eventDialog endDay = 10 asString.
	self eventDialog updateEndMonth: '8' .
	self assert: self eventDialog endMonth = 8 asString.
	self eventDialog updateEndYear: '2002'.
	self assert: self eventDialog endYear = 2002 asString.
	self eventDialog updateEndHour: '7'.
	self assert: self eventDialog endHour = 7 asString.
	self eventDialog updateEndMinute: '8'.
	self assert: self eventDialog endMinute = 8 asString.
	
	self eventDialog location: 'HPI'.
	self assert: self eventDialog location = 'HPI'.
	self eventDialog description: 'Talk'.
	self assert: self eventDialog description = 'Talk'.
	self eventDialog participants: 'Team'.
	self assert: self eventDialog participants = 'Team'.
	self eventDialog title: 'SWT'.
	self assert: self eventDialog title = 'SWT'