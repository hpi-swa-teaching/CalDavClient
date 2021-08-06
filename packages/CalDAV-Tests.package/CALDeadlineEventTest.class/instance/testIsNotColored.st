testing
testIsNotColored
	
	0 to: 52 do: [:each | each = CALDeadlinesWindow weekOfYear
					ifTrue: [self deadlinesEventPanel weekNumber: each - 1]
					ifFalse: [self deadlinesEventPanel weekNumber: each].
				self assert: ((self deadlinesEventPanel buildEventList: ToolBuilder default) color = Color white)]