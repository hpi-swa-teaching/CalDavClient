as yet unclassified
createWithApp: aSCMApp

	| dockingBar |
	dockingBar := self new
		app: aSCMApp;
		yourself.
		
	dockingBar addMorph: (dockingBar createFormButton).
	
	^ dockingBar