testing
testSwitchViewButton

	| button currentView |
	currentView := SCMApp view.
	button := self subject findByLabel: 'Switch View'.
	self assert: button actionSelector equals:#switchView.
     self assert: button target class equals: SCMApp.
	button click. 
	SCMApp view equals: currentView;
		ifTrue: [self signalFailure: 'View was ', (currentView asString), ' and still is. But should have been switched.']