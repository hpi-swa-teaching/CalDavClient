as yet unclassified
setUp

	| model |
	
	model := CALDayGridPanel new
		parent: CALApp new;
		day: Date today.
	dayGrid := model buildSpec: ToolBuilder default