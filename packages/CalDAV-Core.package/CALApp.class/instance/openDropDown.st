as yet unclassified
openDropDown
	
	| calendarnames |
	calendarnames := OrderedCollection new.
	self calendars do: [ :each | calendarnames add: each name].
	^ (DropDownChoiceMorph new 
		contents: 'choose calendar to edit';
		items: calendarnames;
		getItemsSelector: nil;
		position: self topView position + (160 @ 300);
		yourself) openInWorld