testing
testStupidMonth

	mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'Jupiter' Day:'3' Hour:'20' Minute:'0'.

	self assert: mockDialog filterDateAndTime = false.