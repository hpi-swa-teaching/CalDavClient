initialization
addView
	
	self
		view: (SCMViewHolder createWith: self calendarRepository);
		addMorphBack: self view