initialization
loadViewWithEmptyDays: aSortedCollection andSelectedDate: aDate

	| currentViewDay currentDate |
	
	currentDate := aDate.
	self daysPerView timesRepeat: [
		currentViewDay := self createAndAddViewDayAtDate: currentDate.
		self addEventMorphs: aSortedCollection ToViewDay: currentViewDay.
		currentDate := currentDate next]