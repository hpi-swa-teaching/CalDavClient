initialization
loadViewWithEmptyDays: aSortedCollection

	| currentDay currentDate layout|
	
	layout := aSortedCollection isEmpty ifTrue: [#spaceFill] ifFalse: [#shrinkWrap].
	
	currentDate := self startDate.
	self class defaultDaysPerView timesRepeat: [
		currentDay := SCMAgendaViewDay createWithDate: currentDate.
		currentDay vResizing: layout.
		self addMorphBack: currentDay.
	
		aSortedCollection do: [:each |
			each begin asDate = currentDate
				ifTrue: [currentDay addEvent: each]].
	
		currentDate := currentDate next]