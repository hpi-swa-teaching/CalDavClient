as yet unclassified
createWithApp: aSCMApp

	| dockingBar |
	dockingBar := self new
		app: aSCMApp; 
		createEventButton;
		createSwitchViewButton;
		yourself.
	
	^ dockingBar