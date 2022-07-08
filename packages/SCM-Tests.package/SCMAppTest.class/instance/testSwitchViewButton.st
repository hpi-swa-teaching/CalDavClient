testing
testSwitchViewButton

	| button currentView |
	currentView := self subject viewClass currentView.
	button := self subject dockingBar widgets at: #switch.
	self assert: button actionSelector equals: #switch.
  	self assert: button target class equals: SCMApp.
	
	"self assert: subject window extent equals: 800 @ 1000.
	
	button click. 
	
	self assert: self subject view ~~ currentView.	
	self assert: subject window extent equals: 1600 @ 835."