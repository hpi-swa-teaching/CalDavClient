initialization
createFields

	|button|
	
	self eventTitle: (self createTextField: 'Title').
	self addMorphBack: self eventTitle.
	
	self eventBeginYear: (self createTextField: 'Begin Year').
	self addMorphBack: self eventBeginYear.
	
	self eventBeginMonth: (self createTextField: 'Begin Month').
	self addMorphBack: self eventBeginMonth.
	
	self eventBeginDay: (self createTextField: 'Begin Day').
	self addMorphBack: self eventBeginDay.
	
	self eventBeginHour: (self createTextField: 'Begin Hour').
	self addMorphBack: self eventBeginHour.
	
	self eventBeginMinute: (self createTextField: 'Begin Minute').
	self addMorphBack: self eventBeginMinute.
	
	self eventEndYear: (self createTextField: 'End Year').
	self addMorphBack: self eventEndYear.
	
	self eventEndMonth: (self createTextField: 'End Month').
	self addMorphBack: self eventEndMonth.
	
	self eventEndDay: (self createTextField: 'End Day').
	self addMorphBack: self eventEndDay.
	
	self eventEndHour: (self createTextField: 'End Hour').
	self addMorphBack: self eventEndHour.
	
	self eventEndMinute: (self createTextField: 'End Minute').
	self addMorphBack: self eventEndMinute.
	
	self eventDescription: (self createTextField: 'Description').
	self addMorphBack: self eventDescription.
	
	self eventLocation: (self createTextField: 'Location').
	self addMorphBack: self eventLocation.
	
	self eventParticipants: (self createTextField: 'Participants').
	self addMorphBack: self eventParticipants.
	
	button := self createButtonWithLabel: 'Done' andTarget: self.
	self addMorphBack: button.