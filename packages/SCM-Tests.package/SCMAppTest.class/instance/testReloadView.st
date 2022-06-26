testing
testReloadView

	| currentView |
	currentView := self subject submorphs second.
	self subject reload.
	self assert: self subject submorphs second equals: currentView.