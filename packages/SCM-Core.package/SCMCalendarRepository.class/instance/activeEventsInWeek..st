as yet unclassified
activeEventsInWeek: aDate

	| monday sunday |
	
	monday := aDate asWeek asDate next.
	sunday := aDate asWeek next asDate.

	^ self activeEvents select: [:each | (each begin >= monday) and: (each begin <= sunday)]