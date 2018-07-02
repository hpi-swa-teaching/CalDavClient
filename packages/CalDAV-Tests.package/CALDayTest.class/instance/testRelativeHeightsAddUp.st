as yet unclassified
testRelativeHeightsAddUp

	| day |
	
	day := CALDay new.
	self assert: day relativeAddButtonHeight + day relativeEventListHeight  + day relativeDayButtonHeight equals: 1