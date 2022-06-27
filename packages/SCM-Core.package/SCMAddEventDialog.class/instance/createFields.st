part creation
createFields

	| button |
	
	self title: (self createTextField: 'Title').
	self addMorphBack: self title.
	
	self updateBeginYear: (self createTextField: Date today year asString).
	self addMorphBack: self beginYear.
	
	self updateBeginMonth: (self createTextField: Date today monthIndex asString).
	self addMorphBack: self beginMonth.
	
	self updateBeginDay: (self createTextField: Date today dayOfMonth asString).
	self addMorphBack: self beginDay.
	
	self updateBeginHour: (self createTextField: DateAndTime now hour asString).
	self addMorphBack: self beginHour.
	
	self updateBeginMinute: (self createTextField: DateAndTime now minute asString).
	self addMorphBack: self beginMinute.
	
	self updateEndYear: (self createTextField: Date today year asString).
	self addMorphBack: self endYear.
	
	self updateEndMonth: (self createTextField: Date today monthIndex asString).
	self addMorphBack: self endMonth.
	
	self updateEndDay: (self createTextField: Date today dayOfMonth asString).
	self addMorphBack: self endDay.
	
	self updateEndHour: (self createTextField: DateAndTime now hour asString).
	self addMorphBack: self endHour.
	
	self updateEndMinute: (self createTextField: DateAndTime now minutes asString).
	self addMorphBack: self endMinute.
	
	self description: (self createTextField: 'Description').
	self addMorphBack: self description.
	
	self location: (self createTextField: 'Location').
	self addMorphBack: self location.
	
	self participants: (self createTextField: 'Participants').
	self addMorphBack: self participants.
	
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