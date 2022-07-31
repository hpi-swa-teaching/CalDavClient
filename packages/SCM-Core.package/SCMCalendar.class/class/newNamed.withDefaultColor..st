as yet unclassified
newNamed: aString withDefaultColor: aColor 

	^ self new 
			title: aString;
			color: aColor;
			createId;
			updateLastModified;
			store;
			yourself