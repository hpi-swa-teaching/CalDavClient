testing
testShowPreviousViewPage

	| selectedDate previousSelectedDate |
	
	selectedDate := self selectedDate.
	self subject showPreviousViewPage.
	previousSelectedDate := selectedDate - self currentViewClass defaultSkip.
	self assert: previousSelectedDate = self selectedDate