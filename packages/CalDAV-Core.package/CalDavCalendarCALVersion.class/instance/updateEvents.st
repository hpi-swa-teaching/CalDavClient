updating
updateEvents
	
	| updateInformation |
	updateInformation := self client fetchEventsDataFrom: self url.
	
	updateInformation do: [:rawEventData | 
		rawEventData at: #url put: (self url scheme, '://', self url authority, (rawEventData at: #urlLocalPart)) asURI].
	
	self 
		removeDeletedEvents: updateInformation allButFirst;
		updateOrAddEvents: updateInformation allButFirst
	
	