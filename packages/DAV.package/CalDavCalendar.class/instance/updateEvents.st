updating
updateEvents
	
	| updateInformation |
	updateInformation := self client fetchEventsDataFrom: self url.
	
	updateInformation do: [:rawEventData | 
		rawEventData at: #url put: (self url authorityUrl , (rawEventData at: #urlLocalPart)) asURI].
	
	self 
		removeDeletedEvents: updateInformation;
		updateOrAddEvents: updateInformation.
	
	