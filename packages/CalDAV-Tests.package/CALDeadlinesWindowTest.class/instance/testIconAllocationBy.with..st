testing
testIconAllocationBy: aSymbol with: aLabel

	| icon |
	
	icon := self deadlinesView 
		perform: aSymbol 
		with: ToolBuilder default.
    	self assert: icon label runs values first first anchoredMorph name = aLabel