as yet unclassified
newNamed: aString 

	^ self new 
			title: aString;
			createId;
			store;
			yourself