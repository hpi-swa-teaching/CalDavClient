as yet unclassified
loadViewWith: aSortedCollection andStartDate: aDate

	| day currentDay|
	
	day := aDate.
	
	self class defaultDaysPerView timesRepeat:
		[currentDay := (SCMWeekViewDay createWithDate: day).
		
		aSortedCollection do: [:each |
			each begin asDate = day
				ifTrue: [currentDay addEvent: each]].
		
		self addMorphBack: currentDay.
		day := day next]