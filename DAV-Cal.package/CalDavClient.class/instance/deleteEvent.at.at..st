requests
deleteEvent: anIcalObject at: anUrl at: etag

	| response |
	self assumesAuthorization.
	
	response := self sendDeleteTo: anUrl withHeader: {
			'Content-Type' -> 'text/calendar'.
			'If-Match' -> etag asString.
		}.
	
	response isSuccess ifFalse: [Exception signal].
	
	^ response isSuccess