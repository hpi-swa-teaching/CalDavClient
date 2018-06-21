as yet unclassified
testFillMonthIsCorrect
	
	|firstDay notInMonth|
	
	firstDay := monthView days at: 4.
	notInMonth := monthView days at: 37.
	monthView changeMonthTo: self firstOfMarch2018.
	self assert: (firstDay dateText = '1').
	self assert: (notInMonth dateText = '')