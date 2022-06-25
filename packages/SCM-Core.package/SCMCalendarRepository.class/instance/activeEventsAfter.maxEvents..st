as yet unclassified
activeEventsAfter: aDate maxEvents: anInteger

	^ (self activeEvents select: [:each | each begin >= aDate]) take: anInteger