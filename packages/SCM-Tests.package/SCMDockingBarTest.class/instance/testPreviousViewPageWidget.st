testing
testPreviousViewPageWidget

	| widget |
	
	self assert: (self subject buttons includesKey: #showPreviousViewPage).
	widget := self subject buttons at: #showPreviousViewPage.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #showPreviousViewPage