subwindows
openCalendarColorEditor
	
	| dropDown argCollection |
	argCollection := OrderedCollection new.
	dropDown := DropDownChoiceMorph new.
	argCollection add: dropDown; yourself.
	dropDown 
		contents: 'choose calendar to edit';
		target: self; 
		getItemsSelector: #calendarNames;
		getItemsArgs: Array empty;
		arguments: argCollection;
		actionSelector: #deleteDropDown:AndSetColorOf:;
		position: self topView position + (160 @ 300);
		yourself.
	dropDown openInWorld