testing
testHierarchy

	self assert: self agenda submorphs size equals: 7.
	self agenda submorphs do:
		[:sub | self assert: sub class equals: AgendaDay. ]