accessing
loadView: aSCMViewType

	self currentView: aSCMViewType.
	self addMorph: (self viewTypes at: aSCMViewType) new. "calender need to be transferred here..."