as yet unclassified
openForApp: anApp

	| monthView |
	
	monthView := CALMonthPane new
		parent: anApp.
	^ ToolBuilder default open: monthView