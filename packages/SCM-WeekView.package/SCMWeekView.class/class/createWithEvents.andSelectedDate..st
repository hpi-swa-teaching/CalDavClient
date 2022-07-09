as yet unclassified
createWithEvents: aSortedCollection andSelectedDate: aDate

	^ self new
			loadViewWith: aSortedCollection andStartDate: (self mondayBefore: aDate);
			yourself