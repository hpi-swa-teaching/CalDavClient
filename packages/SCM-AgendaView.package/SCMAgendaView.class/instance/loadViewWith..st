initialization
loadViewWith: aSortedCollection

	| currentDay |
	
	aSortedCollection isEmpty ifTrue: [^ self].
	
	currentDay := SCMAgendaViewDay createWithDate: aSortedCollection first begin asDate.
	self addMorph: currentDay.
	aSortedCollection do: [:each |
		each begin asDate ~= currentDay date
			ifTrue: [currentDay := SCMAgendaDay createWithDate: each begin asDate.
				self addMorphBack: currentDay].
		currentDay addEvent: each]