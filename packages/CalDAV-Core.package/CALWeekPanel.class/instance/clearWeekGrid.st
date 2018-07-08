as yet unclassified
clearWeekGrid

	((self dependents detect: [ :each | each externalName = 'weekPanel' ])
		 submorphNamed: 'weekGrid') delete