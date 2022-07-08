as yet unclassified
activeEventsAfter: aDate maxEvents: anInteger andBefore: anotherDate

	^ (self activeEvents select: [:each | each begin >= aDate and: [each begin < anotherDate] ]) take: anInteger