as yet unclassified
testFillMonthIsCorrect
	
	|positionOfFirst firstDay notInMonth|
	positionOfFirst := 5.
	self setUp.
	firstDay := monthView days at: 5.
	notInMonth := monthView days at: 37.
	monthView changeMonthTo: self march2018.
	self assert: (firstDay dateText = '1').
	self assert: (notInMonth dateText = '')