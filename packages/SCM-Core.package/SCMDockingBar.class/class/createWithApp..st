as yet unclassified
createWithApp: aSCMApp

	| dockingBar |
	dockingBar := self new
		createWidgets: aSCMApp;
		yourself.
	
	^ dockingBar