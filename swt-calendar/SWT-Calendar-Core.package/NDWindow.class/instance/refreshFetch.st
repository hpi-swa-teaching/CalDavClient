accessing
refreshFetch
	| googleAppointments collectedEvents eventNames dayList currentButton pneis|
		
		googleAppointments := NDFetchAppointments fetchFromGoogle.
		googleAppointments := googleAppointments collect: [:each | (each at: #calendarData) events first].
		dayList := self dayList.
		dayList do: [:peach |
			currentButton := peach.
			pneis := currentButton submorphs.
			currentButton := pneis last.
			collectedEvents := googleAppointments select: [:each | 
				each start asDate asString = currentButton date asString]. 
			eventNames := collectedEvents collect: #summary. 
			currentButton eventLabel: (eventNames joinSeparatedBy: '
').].. 