testing
testIsColored

	self deadlinesEventPanel weekNumber: CALDeadlinesWindow weekOfYear.
	self assert: (((self deadlinesEventPanel buildEventList: ToolBuilder default) color = Color white) not)