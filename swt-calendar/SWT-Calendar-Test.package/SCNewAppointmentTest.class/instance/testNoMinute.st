as yet unclassified
testNoMinute

mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'March' Day:'18' Hour:'20' Minute:''.

self assert: mockDialog filterDateAndTime = false.