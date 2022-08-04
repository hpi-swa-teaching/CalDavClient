testing
testOpenWith

	| dialogWindow |
	
	dialogWindow := SCMAddCalendarDialog openWith: SCMMockCalendarRepository get.
	self assert: dialogWindow class equals: PluggableSystemWindow.
	
	dialogWindow abandon