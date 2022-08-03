testing
testFullDayButton
	
	self assert: self editDialog isFullDaySelected not.
	self assert: self editDialog isFullDay not.
		
	self editDialog switchFullDaySelected .
		
	self assert: self editDialog isFullDaySelected.
	self assert: self editDialog isFullDay.
	
	self editDialog switchFullDaySelected.
	
	self assert: self editDialog isFullDaySelected not.