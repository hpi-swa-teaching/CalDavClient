accessing
load: aSCMViewType

	self currentView: aSCMViewType.
	self addMorph: ((self viewTypes at: aSCMViewType) createWithEvents: 
			(self calendarManager activeEventsAfter: self startDay maxEvents: self defaultMaxEvents))