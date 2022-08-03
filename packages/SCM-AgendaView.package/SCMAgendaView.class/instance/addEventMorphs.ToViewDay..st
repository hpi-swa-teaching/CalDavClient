initialization
addEventMorphs: aSortedCollection ToViewDay: aSCMAgendaViewDay 

	aSortedCollection do: 
		[:each | each begin asDate = aSCMAgendaViewDay date
			ifTrue: [aSCMAgendaViewDay addEvent: each]]