accessing
events

	^ events ifNil: [events := SortedCollection new]