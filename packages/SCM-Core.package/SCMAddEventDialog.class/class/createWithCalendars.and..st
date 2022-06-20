creation
createWithCalendars: anOrderedCollection and: aSCMApp

	^ self new
			availableCalendars: anOrderedCollection;
			app: aSCMApp;
			yourself