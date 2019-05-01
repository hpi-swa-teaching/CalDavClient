requests
fetchEventDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendGetTo: anUrl theRequest: '' withHeader: {
		'Depth' -> '1' }.

	^ self parseCompleteEventInformation: response content
	