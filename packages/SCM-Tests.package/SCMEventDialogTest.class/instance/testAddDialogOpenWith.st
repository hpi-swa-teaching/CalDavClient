running
testAddDialogOpenWith

	| dialogWindow |
	
	dialogWindow := SCMAddEventDialog openWith: SCMMockCalendarRepository get.
	self assert: dialogWindow class equals: PluggableSystemWindow.
	
	dialogWindow abandon