initialization
createWith: aSCMApp

	| dockingBar |
	
	dockingBar := self new
		createWidgetsFor: aSCMApp;
		yourself.
	
	^ dockingBar