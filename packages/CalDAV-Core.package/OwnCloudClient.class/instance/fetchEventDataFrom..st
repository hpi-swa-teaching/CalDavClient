as yet unclassified
fetchEventDataFrom: anUrl

	| response |
	self assumesAuthorization.

	response := self sendGetTo: anUrl theRequest: '' withHeader: {
		'Depth' -> '1' }.

	response contentType: 'text/calendar; charset=utf-8'.
	^ self parseCompleteEventInformation: response content
	