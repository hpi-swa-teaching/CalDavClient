as yet unclassified
widthFor: anEvent
	
	| todaysEvents overlappingEvents |
	
	todaysEvents := self parent eventsBeginIn: self day.
	overlappingEvents := todaysEvents select: [:each | anEvent overlaps: each].
	^ (1.0 - self timeLabelWidth) / overlappingEvents size 