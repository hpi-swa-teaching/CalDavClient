as yet unclassified
newWithName: aString andEvents: aSortedCollection

	^ self new 
			title: aString;
			events: aSortedCollection;
			isActive: true;
			yourself