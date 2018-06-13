as yet unclassified
xLeftFor: anEvent
	
	| rank todaysEvents overlappingEvents |
	
	todaysEvents := self parent eventsBeginIn: self day.
	overlappingEvents := (todaysEvents select: [:each | anEvent overlaps: each]) asSortedCollection.
	rank := overlappingEvents indexOf: anEvent.
	^ self timeLabelWidth + ((rank - 1) * ((1.0 - self timeLabelWidth) / overlappingEvents size))