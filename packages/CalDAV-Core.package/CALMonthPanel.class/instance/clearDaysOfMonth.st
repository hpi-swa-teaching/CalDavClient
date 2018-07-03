toolbuilder
clearDaysOfMonth

	[(((self dependents select: [ :each | each externalName = 'monthPanel' ]) first)
		submorphNamed: 'daysOfMonth') delete] on: Error do: [^ self] "abort clearing if model has no dependent morph called monthPanel"