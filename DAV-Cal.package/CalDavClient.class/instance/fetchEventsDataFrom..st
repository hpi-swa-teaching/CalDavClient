requests
fetchEventsDataFrom: anUrl

	| response |
	self assumesAuthorization.
	
	response := self sendPropfindTo: anUrl theRequest: self fetchEventsDataQuery withHeader: {
		'Prefer' -> 'return-minimal'.
		'Depth' -> '1' }.
	
	^ self parseEventsInformation: response content