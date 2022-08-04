initialization
createWithEvents: aSortedCollection andSelectedDate: aDate

	^ self new
			loadViewWithEmptyDays: aSortedCollection andSelectedDate: aDate;
			openInScrollPane