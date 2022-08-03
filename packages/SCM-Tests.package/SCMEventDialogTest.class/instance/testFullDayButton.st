testing
testFullDayButton
	
	self assert: self editDialog fullDaySelected not.
	self assert: self editDialog isFullDay not.
		
	self editDialog switchFullDaySelected .
		
	self assert: self editDialog fullDaySelected.
	self assert: self editDialog isFullDay.
	
	self editDialog switchFullDaySelected.
	
	self assert: self editDialog fullDaySelected not