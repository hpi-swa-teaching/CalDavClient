testing
testNextViewPageWidget

	| widget |
	
	self assert: (self subject buttons includesKey: #showNextViewPage).
	widget := self subject buttons at: #showNextViewPage.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #showNextViewPage