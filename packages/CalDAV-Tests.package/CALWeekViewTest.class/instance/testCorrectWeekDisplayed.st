testing
testCorrectWeekDisplayed
	
	self assert: weekPanel day = self firstOfMarch2018 description: 'day should be the one set in setUp'.
	self assert: (weekPanel weekText = '26 February 2018 - 4 March 2018')