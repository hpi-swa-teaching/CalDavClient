initialization
createFields

	|button|
	
	self eventTitle: (self createTextField: 'Title').
	self addMorphBack: self eventTitle.
	
	self eventBeginYear: (self createTextField: '1').
	self addMorphBack: self eventBeginYear.
	
	self eventBeginMonth: (self createTextField: '1').
	self addMorphBack: self eventBeginMonth.
	
	self eventBeginDay: (self createTextField: '1').
	self addMorphBack: self eventBeginDay.
	
	self eventBeginHour: (self createTextField: '1').
	self addMorphBack: self eventBeginHour.
	
	self eventBeginMinute: (self createTextField: '1').
	self addMorphBack: self eventBeginMinute.
	
	self eventEndYear: (self createTextField: '1').
	self addMorphBack: self eventEndYear.
	
	self eventEndMonth: (self createTextField: '2').
	self addMorphBack: self eventEndMonth.
	
	self eventEndDay: (self createTextField: '2').
	self addMorphBack: self eventEndDay.
	
	self eventEndHour: (self createTextField: '2').
	self addMorphBack: self eventEndHour.
	
	self eventEndMinute: (self createTextField: '2').
	self addMorphBack: self eventEndMinute.
	
	self eventDescription: (self createTextField: 'Description').
	self addMorphBack: self eventDescription.
	
	self eventLocation: (self createTextField: 'Location').
	self addMorphBack: self eventLocation.
	
	self eventParticipants: (self createTextField: 'Participants').
	self addMorphBack: self eventParticipants.
	
	self eventCalendarDropDown: (DropDownChoiceMorph new
		contents: 'Choose calendar!';
		target: self;
		actionSelector: nil;
		arguments: Array empty;
		getItemsSelector: #availableCalendarsAsStrings;
		getItemsArgs: Array empty;
		yourself).
	self addMorphBack: self eventCalendarDropDown.	
		
	button := self createSaveButton.
	self addMorphBack: button.