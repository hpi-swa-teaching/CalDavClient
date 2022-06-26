testing
testReload

	| currentView |
	
	currentView := self subject currentView.	
	self subject reload.
	
	self assert: self subject currentView equals: currentView.
		