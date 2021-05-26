subwindows
deleteDropDown: aDropDownChoiceMorph AndSetColorOf: aCalendarName

	| argCollection dropDown |
	aDropDownChoiceMorph delete.
	dropDown := DropDownChoiceMorph new.
	argCollection := OrderedCollection new add: dropDown; add: aCalendarName; yourself. 
	dropDown 
		contents: 'Please select a new color';
		target: self;
		getItemsSelector: #calendarColors;
		getItemsArgs: Array empty;
		actionSelector: #deleteDropDown:AndChange:Color:;
		arguments: argCollection;
		position: self topView position + (160 @ 300);
		yourself.
	dropDown openInWorld