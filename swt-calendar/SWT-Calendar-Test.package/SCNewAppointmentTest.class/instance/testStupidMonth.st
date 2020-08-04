as yet unclassified
testStupidMonth

mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'March2' Day:'3' Hour:'20' Minute:'0'.

self assert: mockDialog filterDateAndTime = false.