as yet unclassified
saveData

	| mock app |
	
	mock := NDMockData new.
	app := NDAppointment new.
	
	mock class appointmentTitle: self titleArea textArea text.
	mock class startTime: self startTimeArea textArea text.
	mock class endTime: self endTimeArea textArea text.
	mock class date: self selectedCalDate.
	mock appointmentTitle: self titleArea textArea text.
	mock startTime: self startTimeArea textArea text.
	mock endTime: self endTimeArea textArea text.
	mock date: self selectedCalDate.
	NDWindow appointmentDictionary at: (selectedCalDate asSymbol) put: mock.
	
	self accept: self.