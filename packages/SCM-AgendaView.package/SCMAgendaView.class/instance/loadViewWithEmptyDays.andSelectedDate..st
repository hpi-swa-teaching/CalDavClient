initialization
loadViewWithEmptyDays: aSortedCollection andSelectedDate: aDate

	| currentDate currentViewDay |
	
	currentDate := aDate.
	self daysPerView timesRepeat: 
		[currentViewDay := self createViewDayWithDate: currentDate.
		self addViewDay: currentViewDay withEvents: aSortedCollection.
		currentDate := currentDate next]