as yet unclassified
loadViewWith: aSortedCollection andStartDate: aDate

	| day currentDay|
	
	day := aDate.
	
	7 timesRepeat:
		[currentDay := (SCMWeekViewDay createWithDate: day).
		
		aSortedCollection do: [:each |
			each begin asDate mmddyyyy = day mmddyyyy
				ifTrue: [currentDay addEvent: each].
				
				Transcript showln: each begin asDate class.
				Transcript showln: day class.].
		
		self addMorphBack: currentDay.
		day := day next]
	
