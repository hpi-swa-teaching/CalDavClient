updating
removeDeletedEvents: updateInformation

	| urlsToRemove |
	urlsToRemove := ((self events collect: [:anEvent | anEvent url asString ]) 
						difference: (updateInformation collect: [:info | info at: #url asString])).
						
	self events: (self events reject: [:anEvent | urlsToRemove includes: anEvent url asString]).