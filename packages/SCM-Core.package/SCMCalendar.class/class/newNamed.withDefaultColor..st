initialization
newNamed: aString withDefaultColor: aColor 

	^ self new 
			title: aString;
			color: aColor;
			store;
			yourself