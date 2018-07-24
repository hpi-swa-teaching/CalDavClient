testing
testFullDayButton

	| de1 |
	
	de1 := self demoEvent.
	app addEvent: de1.
	
	editDialog
		parent: app;
		event: de1;
		oldEvent: de1.
	
	self assert: editDialog isFullDaySelected not.
	self assert: editDialog event isFullDay not.
		
	editDialog switchFullDaySelected .
		
	self assert: editDialog isFullDaySelected.
	self assert: editDialog event isFullDay.
	
	editDialog switchFullDaySelected.
	self assert: editDialog isFullDaySelected not.