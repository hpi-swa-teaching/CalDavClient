subwindows
deleteDropDown: aDropDownChoiceMorph AndChange: aCalendarName Color: aColorName

	aDropDownChoiceMorph delete.
	(self calendarNamed: aCalendarName) color: (Color colorFrom: aColorName)

	