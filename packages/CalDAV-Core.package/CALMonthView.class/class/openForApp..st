as yet unclassified
openForApp: anApp

	| monthView |
	
	monthView := CALMonthView new
		parent: anApp.
	^ ToolBuilder default open: monthView