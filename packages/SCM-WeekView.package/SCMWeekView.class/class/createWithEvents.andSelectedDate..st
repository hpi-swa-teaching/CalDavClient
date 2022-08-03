initialization
createWithEvents: aSortedCollection andSelectedDate: aDate

	^ self new
			loadViewWith: aSortedCollection andStartDate: (self mondayBefore: aDate);
			openInScrollPane