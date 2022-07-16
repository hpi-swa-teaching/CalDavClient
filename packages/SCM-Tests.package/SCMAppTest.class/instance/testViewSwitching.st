testing
testViewSwitching

	|view|
	view := self subject view currentView.
	self subject switch.
	self assert: (view ~=  self subject view currentView)
	