accessing
load: aSCMViewType

	self currentView: aSCMViewType.
	self currentView = #agenda
		ifTrue: [
			self addMorph: ((self viewTypes at: aSCMViewType)
				createWithEvents: (self calendarManager
					activeEventsAfter: self startDay maxEvents: self defaultMaxEvents))
				]
		ifFalse: [
			self addMorph: (self viewTypes at: aSCMViewType) new]