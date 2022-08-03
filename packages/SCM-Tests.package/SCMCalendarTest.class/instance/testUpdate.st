testing
testUpdate

	self assert: self calendar calendarFileExists.
	self calendar delete.
	self assert: self calendar calendarFileExists not.
	self calendar update: #eventChanged.
	self assert: self calendar calendarFileExists