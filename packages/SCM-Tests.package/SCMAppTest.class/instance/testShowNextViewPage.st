testing
testShowNextViewPage

	|selectedDate|
	selectedDate := self subject view selectedDate.
	self subject showNextViewPage.
	self assert: (selectedDate +  self subject view currentViewClass defaultSkip = self subject view selectedDate)