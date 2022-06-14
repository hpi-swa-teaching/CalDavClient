as yet unclassified
loadViewWith: aSortedCollection

	| day currentDay|
	
	day := (DateAndTime today asWeek) asDate next.
	
	7 timesRepeat:
		[currentDay := (SCMWeekViewDay createWithDate: day).
		
		aSortedCollection do: [
			:each | each begin asDate = currentDay date
				ifTrue: [currentDay addEvent: each].
			].
		
		self addMorphBack: currentDay.
		day := day next]