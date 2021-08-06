testing
testNumberToTwoDigitsString

	self assert: ((CALEvent numberToTwoDigitsString: 7) = '07').
	self assert: ((CALEvent numberToTwoDigitsString: 4) ~= '4').
	self assert: ((CALEvent numberToTwoDigitsString: 10) = '10')