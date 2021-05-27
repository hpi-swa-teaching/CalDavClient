as yet unclassified
eventNames 
	
	self date 
		ifNil: [^OrderedCollection new] 
		ifNotNil: [^ self app eventNamesIn: self date]