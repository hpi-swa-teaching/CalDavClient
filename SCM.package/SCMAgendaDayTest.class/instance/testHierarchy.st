testing
testHierarchy

	self assert: self subject submorphs size equals: 2.
	self assert: self subject submorphs first class equals: SCMAgendaDayTitle.
	self assert: self subject submorphs second class equals: SCMAgendaDayEventBox