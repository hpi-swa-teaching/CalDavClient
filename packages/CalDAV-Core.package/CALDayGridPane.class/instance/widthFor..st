as yet unclassified
widthFor: anEvent
	
	| todaysEvents overlappingEvents |
	
	todaysEvents := self parent eventsIn: self day.
	overlappingEvents := todaysEvents select: [:each | anEvent overlaps: each].
	^ 1.0 / overlappingEvents size 