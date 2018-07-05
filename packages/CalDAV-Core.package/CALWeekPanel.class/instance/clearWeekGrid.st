as yet unclassified
clearWeekGrid

	((self dependents select: [ :each | each externalName = 'weekPanel' ]) first
		 submorphNamed: 'weekGrid') delete