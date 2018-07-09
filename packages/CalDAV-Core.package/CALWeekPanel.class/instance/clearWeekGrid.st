as yet unclassified
clearWeekGrid

	((self dependents detect: [ :each | each externalName = 'weekPanel' ] ifNone: [self error: 'No week panel found in dependents'])
		 submorphNamed: 'weekGrid') delete