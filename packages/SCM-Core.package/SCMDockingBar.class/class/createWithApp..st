initialization
createWithApp: aSCMApp

	| dockingBar |
	
	dockingBar := self new
		createWidgetsFor: aSCMApp;
		yourself.
	
	^ dockingBar