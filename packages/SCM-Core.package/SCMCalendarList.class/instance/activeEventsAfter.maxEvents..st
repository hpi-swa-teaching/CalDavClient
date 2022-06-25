info retrieval
activeEventsAfter: aDate maxEvents: anInteger

	^ (self activeEvents select: [:each | each begin >= aDate]) take: anInteger