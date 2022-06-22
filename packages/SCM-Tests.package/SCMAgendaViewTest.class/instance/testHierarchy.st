testing
testHierarchy

	self assert: self subject submorphs size equals: 3.
	self subject submorphs do:
		[:sub | self assert: sub class equals: SCMAgendaViewDay]