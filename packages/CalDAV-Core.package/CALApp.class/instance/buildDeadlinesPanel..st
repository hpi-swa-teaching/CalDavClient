toolbuilder
buildDeadlinesPanel: aBuilder
	
	^ (self deadlinesPanel buildSpec: aBuilder) frame: (0.3 @ 0 corner: 1 @ 1)