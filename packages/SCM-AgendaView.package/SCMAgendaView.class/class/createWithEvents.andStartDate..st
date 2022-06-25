as yet unclassified
createWithEvents: aSortedCollection andStartDate: aDate

	^ self new
			startDate: aDate;
			loadViewWithEmptyDays: aSortedCollection;
			yourself