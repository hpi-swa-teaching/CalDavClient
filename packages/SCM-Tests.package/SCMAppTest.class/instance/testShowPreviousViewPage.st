testing
testShowPreviousViewPage

	|selectedDate|
	selectedDate := self subject view selectedDate.
	self subject showPreviousViewPage.
	self assert: (selectedDate -  self subject view currentViewClass defaultSkip = self subject view selectedDate)