testing
testNextViewPageWidget

	| widget |
	
	self assert: (self subject widgets includesKey: #showNextViewPage).
	widget := self subject widgets at: #showNextViewPage.
	self assert: widget class = SCMButton.
	self assert: widget target equals: self app.
	self assert: widget actionSelector equals: #showNextViewPage