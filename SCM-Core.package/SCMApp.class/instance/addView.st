initialization
addView
	
	self
		view: (SCMView createWith: self calendarManager);
		addMorphBack: self view