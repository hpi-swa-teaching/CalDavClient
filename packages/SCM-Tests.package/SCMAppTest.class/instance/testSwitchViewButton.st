testing
testSwitchViewButton

	| button currentView |
	currentView := subject view.
	button := self subject findByLabel: 'Switch View'.
	self assert: button actionSelector equals: #switchView.
  	self assert: button target class equals: SCMApp.

	button click. 
	self assert: subject view ~~ currentView.