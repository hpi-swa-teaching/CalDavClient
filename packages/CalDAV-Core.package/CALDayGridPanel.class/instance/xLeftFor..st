as yet unclassified
xLeftFor: anEvent
	
	| rank todaysEvents overlappingEvents |
	
	todaysEvents := self parent eventsIn: self day.
	overlappingEvents := (todaysEvents select: [:each | anEvent overlaps: each]) asSortedCollection.
	rank := overlappingEvents indexOf: anEvent.
	^ (rank - 1) / overlappingEvents size