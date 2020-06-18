as yet unclassified
refreshFetch
	| googleAppointments collectedEvents eventNames dayList currentButton intermediateStep|
		
		googleAppointments := NDFetchAppointments fetchFromGoogle.
		googleAppointments := googleAppointments collect: [:each | (each at: #calendarData) events first].
		dayList := self dayList.
		dayList do: [:peach |
			currentButton := peach.
			intermediateStep := currentButton submorphs.
			currentButton := intermediateStep second.
			collectedEvents := googleAppointments select: [:each | 
				each start asDate asString = currentButton date asString]. 
			eventNames := collectedEvents collect: #summary. 
			currentButton eventLabel: (eventNames joinSeparatedBy: '
').].. 