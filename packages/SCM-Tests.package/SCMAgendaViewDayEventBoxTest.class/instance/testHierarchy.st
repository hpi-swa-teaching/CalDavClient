testing
testHierarchy

	self subject submorphs do:
		[:submorph | self assert: submorph class equals: SCMEventMorph]