initialization
createForm

	| button |
	
	self eventTitle: (self createTextField: 'EventTitle').
	self addMorph: self eventTitle.
	self eventBeginDay: (self createTextField: 'Event Begin Day').
	self addMorph: self eventBeginDay.

	button := self createButtonWithLabel: 'Done' andTarget: self.
	self addMorphBack: button