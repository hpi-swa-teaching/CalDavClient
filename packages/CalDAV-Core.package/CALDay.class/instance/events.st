accessing
events

		self date 
		ifNil: [^OrderedCollection new] 
		ifNotNil: [^ self parent eventsBeginIn: self date]
	