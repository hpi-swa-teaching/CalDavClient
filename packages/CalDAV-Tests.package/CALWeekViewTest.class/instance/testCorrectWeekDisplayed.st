testing
testCorrectWeekDisplayed
	
	self assert: self weekPanel day = self firstOfMarch2018 description: 'day should be the one set in setUp'.
	self assert: (self weekPanel weekText = '26 February 2018 - 4 March 2018')