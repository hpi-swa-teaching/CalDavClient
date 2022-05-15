testing
testHierarchy

	self eventBox submorphs do:
		[:sub | self assert: sub class equals: AgendaDayEvent.]