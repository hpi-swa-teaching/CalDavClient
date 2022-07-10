convenience
eventsCompressed
	
	^ (self events collect: [:event | event compressedCopy]) asOrderedCollection