as yet unclassified
refreshButtonByClick
	| googleAppointments eventNames|
	googleAppointments := NDFetchAppointments fetchFromGoogle.
	googleAppointments := googleAppointments collect: [:each | (each at: #calendarData) events first].
	googleAppointments := googleAppointments select: [:each | 
		each start asDate asString = self date asString].
	eventNames := googleAppointments collect: #summary. 
	eventLabel text: (eventNames joinSeparatedBy: '
').
"eventLabel text: eventLabel text, 'alles was dahinter kommen soll'."