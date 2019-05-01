requests
fetchCalendarDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendPropfindTo: anUrl theRequest: self fetchCalendarQuery withHeader: {
		'Depth' -> '0' }.
		
	^ self parseCalendarInformation: response content
	