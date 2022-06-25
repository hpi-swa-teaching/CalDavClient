initialization
addView
	
	self
		view: (SCMView createWith: self calendarRepository);
		addMorphBack: self view