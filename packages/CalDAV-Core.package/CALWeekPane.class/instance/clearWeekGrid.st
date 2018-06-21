as yet unclassified
clearWeekGrid

	(((self dependents select: [ :each | each externalName = 'weekPane' ]) first)
		 submorphNamed: 'weekGrid') delete