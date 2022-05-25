as yet unclassified
testHierarchie

	self assert: self subject submorphs size equals: 8.
	self subject submorphs do:
		[:sub | self assert: sub class equals: SCMWeekViewDay]