accessing
calendarIndex 
		
	^ calendarIndex 
		ifNil: [calendarIndex := 1] 
		ifNotNil: [calendarIndex]