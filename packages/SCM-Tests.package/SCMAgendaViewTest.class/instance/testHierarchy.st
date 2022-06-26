testing
testHierarchy

	self subject submorphs do:
		[:sub | self assert: sub class equals: SCMAgendaViewDay]