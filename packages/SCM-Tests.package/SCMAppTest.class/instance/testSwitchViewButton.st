testing
testSwitchViewButton

	| button currentView |
	currentView := subject view.
	button := self subject findByLabel: 'Switch View'.
	self assert: button actionSelector equals: #switch.
  	self assert: button target class equals: SCMApp.
	
	self assert: subject window extent equals: 800 @ 1000.
	
	button click. 
	
	self assert: subject view ~~ currentView.	
	self assert: subject window extent equals: 1600 @ 835.