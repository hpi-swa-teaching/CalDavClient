as yet unclassified
openForApp: anApp

	| dayView |
	
	dayView := CALDayView new.
	dayView parent: anApp.
	
	^ToolBuilder default open: dayView