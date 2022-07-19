testing
testPreviousViewPageWidget

	| widget |
	
	self assert: (self subject widgets includesKey: #showPreviousViewPage).
	widget := self subject widgets at: #showPreviousViewPage.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #showPreviousViewPage