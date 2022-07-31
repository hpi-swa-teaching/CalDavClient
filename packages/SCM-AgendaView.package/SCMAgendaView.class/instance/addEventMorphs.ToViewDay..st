initialization
addEventMorphs: aSortedCollection ToViewDay: aViewDay 

	aSortedCollection do: [:each |
		each begin asDate = aViewDay date
			ifTrue: [aViewDay addEvent: each]]