initialization
loadViewWith: aSortedCollection andStartDate: aDate

	| currentDate currentViewDay |
	
	currentDate := aDate.
	self daysPerWeek timesRepeat:
		[currentViewDay := self createViewDayWithDate: currentDate.
		self addViewDay: currentViewDay withEvents: aSortedCollection.
		currentDate := currentDate next]