as yet unclassified
openForApp: anApp

	| monthView |
	
	monthView := CALMonthView new.
	monthView parent: anApp.
	
	^ToolBuilder default open: monthView