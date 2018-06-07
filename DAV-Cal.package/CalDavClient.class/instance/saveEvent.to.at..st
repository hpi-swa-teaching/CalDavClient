requests
saveEvent: anIcalObject to: anUrl at: etag

	| response serializedEvent header |
	self assumesAuthorization.
	
	serializedEvent := (ICCalendarExporter calendar: anIcalObject) export export dataStream contents.
	
	header := etag
		ifEmpty: [{
			'Content-Type' -> 'text/calendar'.
		}]
		ifNotEmpty: [{
			'Content-Type' -> 'text/calendar'.
			'If-Match' -> etag asString.
		}].
	
	response := self sendPutTo: anUrl theRequest: serializedEvent withHeader: header.
	
	response isSuccess ifFalse: [Exception signal].
	
	^ true