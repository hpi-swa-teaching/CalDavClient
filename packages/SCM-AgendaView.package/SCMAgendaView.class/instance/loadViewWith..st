initialization
loadViewWith: aSortedCollection

	| currentDay |
	
	aSortedCollection isEmpty ifTrue: [^ self].
	
	currentDay := SCMAgendaDay createWithDate: aSortedCollection first begin asDate.
	self addMorph: currentDay.
	aSortedCollection do: [:each |
		each begin asDate ~= currentDay date
			ifTrue: [currentDay := SCMAgendaDay createWithDate: each begin.
				self addMorphBack: currentDay].
		currentDay addEvent: each]