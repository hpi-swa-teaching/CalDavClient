initialization
createFields

	| button |
	
	self eventTitle: (self createTextField: 'Title').
	self addMorphBack: self eventTitle.
	
	self eventBeginYear: (self createTextField: Date today year asString).
	self addMorphBack: self eventBeginYear.
	
	self eventBeginMonth: (self createTextField: Date today monthIndex asString).
	self addMorphBack: self eventBeginMonth.
	
	self eventBeginDay: (self createTextField: Date today dayOfMonth asString).
	self addMorphBack: self eventBeginDay.
	
	self eventBeginHour: (self createTextField: DateAndTime now hour asString).
	self addMorphBack: self eventBeginHour.
	
	self eventBeginMinute: (self createTextField: DateAndTime now minute asString).
	self addMorphBack: self eventBeginMinute.
	
	self eventEndYear: (self createTextField: Date today year asString).
	self addMorphBack: self eventEndYear.
	
	self eventEndMonth: (self createTextField: Date today monthIndex asString).
	self addMorphBack: self eventEndMonth.
	
	self eventEndDay: (self createTextField: Date today dayOfMonth asString).
	self addMorphBack: self eventEndDay.
	
	self eventEndHour: (self createTextField: DateAndTime now hour asString).
	self addMorphBack: self eventEndHour.
	
	self eventEndMinute: (self createTextField: DateAndTime now minutes asString).
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
	self addMorphBack: button