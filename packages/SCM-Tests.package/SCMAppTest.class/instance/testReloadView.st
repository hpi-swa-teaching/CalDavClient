testing
testReloadView

	| view reloadedView |
	
	view := self view.
	self subject reload.
	reloadedView := self view.
	self assert: reloadedView equals: view