testing
testViewSwitching

	| currentView switchedView |
	
	currentView := self view currentView.
	self subject switch.
	switchedView := self view currentView.
	self assert: (currentView ~=  switchedView)
	