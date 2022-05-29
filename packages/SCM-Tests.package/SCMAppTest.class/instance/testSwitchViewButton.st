testing
testSwitchViewButton

	| button currentView |
	currentView := subject view.
	button := self subject findByLabel: 'Switch View'.
	self assert: button actionSelector equals: #switchView.
  	self assert: button target class equals: SCMApp.
	
	(currentView == SCMAgenda)
		ifTrue:[self assert: subject extent equals: 800 @ 1000]
		ifFalse:[self assert: subject extent equals: 2000 @ 835]
	
	button click. 
	
	self assert: subject view ~~ currentView.	
	(currentView == SCMAgenda)
		ifFalse:[self assert: subject extent equals: 800 @ 1000]
		ifTrue:[self assert: subject extent equals: 2000 @ 835]