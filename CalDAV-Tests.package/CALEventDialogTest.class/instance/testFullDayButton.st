testing
testFullDayButton

	| de1 |
	
	de1 := self demoEvent.
	self app addEvent: de1.
	
	self editDialog
		app: self app;
		event: de1;
		oldEvent: de1.
	
	self assert: self editDialog isFullDaySelected not.
	self assert: self editDialog event isFullDay not.
		
	self editDialog switchFullDaySelected .
		
	self assert: self editDialog isFullDaySelected.
	self assert: self editDialog event isFullDay.
	
	self editDialog switchFullDaySelected.
	self assert: self editDialog isFullDaySelected not