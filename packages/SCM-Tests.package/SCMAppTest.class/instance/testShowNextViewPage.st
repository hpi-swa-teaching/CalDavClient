testing
testShowNextViewPage

	| selectedDate nextSelectedDate |
	
	selectedDate := self selectedDate.
	self subject showNextViewPage.
	nextSelectedDate := selectedDate + self currentViewClass defaultSkip.
	self assert: nextSelectedDate = self selectedDate