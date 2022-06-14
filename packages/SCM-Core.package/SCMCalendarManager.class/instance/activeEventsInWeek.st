as yet unclassified
activeEventsInWeek

	| monday sunday |
	
	monday := (DateAndTime today asWeek) asDate next.
	sunday := (DateAndTime today asWeek) next asDate.

	^ (self activeEvents select: [:each | (each begin >= monday) and: (each begin <= sunday)])