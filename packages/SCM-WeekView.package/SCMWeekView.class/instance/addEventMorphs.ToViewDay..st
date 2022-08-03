initialization
addEventMorphs: aSortedCollection ToViewDay: aSCMWeekViewDay 

	aSortedCollection do: 
		[:each | each begin asDate = aSCMWeekViewDay date
			ifTrue: [aSCMWeekViewDay addEvent: each]]