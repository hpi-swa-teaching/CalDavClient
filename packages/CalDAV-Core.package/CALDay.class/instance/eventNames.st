accessing
eventNames 
	
	self date 
		ifNil: [^OrderedCollection new] 
		ifNotNil: [^ self parent eventNamesBeginIn: self date]