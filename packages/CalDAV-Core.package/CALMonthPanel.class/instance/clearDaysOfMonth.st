toolbuilder
clearDaysOfMonth

	| monthPanel |
	
	monthPanel := self dependents detect: [ :each | each externalName = 'monthPanel' ] ifNone: [^ self].
	(monthPanel submorphNamed: 'daysOfMonth') delete